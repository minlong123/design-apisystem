<?php

namespace app\api\controller;

use app\common\controller\Api;

use think\Db;
use think\Validate;
use think\Cache;
use think\Loader;
use think\request;
use think\Log;
use think\Config;
use app\common\exception\UploadException;
use app\common\library\Upload;


/**
 * 首页接口
 */
class Design extends Api
{
    protected $noNeedLogin = ['getphotoparam','getCateImgDetail','getphototem','getdocument','getdocumentDetails','savewashphoto','getBanners','savebanerre','savephotowall','uploads'];
    protected $noNeedRight = ['*'];


    /**
     * 上传文件
     * @ApiMethod (POST)
     * @param File $file 文件流
     */
    public function uploads()
    {
        Config::set('default_return_type', 'json');
        //必须设定cdnurl为空,否则cdnurl函数计算错误
        Config::set('upload.cdnurl', '');

        $attachment = null;
        //默认普通上传文件
        $file = $this->request->file('file');
        try {
            $upload = new Upload($file);
            $attachment = $upload->upload();
        } catch (UploadException $e) {
            $this->error($e->getMessage());
        }

         
        //   处理该文件
        $im = new \Imagick(ROOT_PATH."public/".$attachment->url);
        $counts=$im->getNumberImages();
        
        $arrs=[];
        for ($i = 0, $num_layers = $im->getNumberImages(); $i < $num_layers; ++$i) {
        
            if($i<3){
                continue;
            }
            $im->setIteratorIndex($i);      //or this is kinda redundant
            $pagedata=$im->getImagePage();
            $data=[
                "left"=>750-$pagedata["x"]-$pagedata["width"]+1,
                "top"=>$pagedata["y"]+1,
                "width"=>$pagedata["width"]-2,
                "height"=>$pagedata["height"]-2
            ];
            array_push($arrs,$data);
        }
        $retdata['data']=$arrs;




        $this->success(__('Uploaded successful'), ['data'=>$arrs,'url' => $attachment->url, 'fullurl' => cdnurl($attachment->url, true)]);
        

    }




    public function getBanners(){
        
        $phototem=Db::name('bannertem')->order("updatetime desc")->select();
        foreach($phototem as $k=>$v){
            
            $phototem[$k]['picimage'] = ALIOSS_ADDRESS.$v['picimage'];
            
        }
        $this->success('请求成功',$phototem);
            
    }
    
    
    
    public function savephotowall(){
        
        $id=input("id")?intval(input("id")):"";
        
        $images=input('images')?input("images"):"";//base64转成图片
        
        $name=input('name')?input("name"):"";
        $phone=input("phones")?intval(input('phones')):"";
        
        if (!Validate::make()->check(['id' => $id], ['id' => 'require|number'])) {
            $this->error(__('id为空'));
        }
        if (!Validate::make()->check(['phone' => $phone], ['phone' => 'require'])) {
            $this->error(__('手机为空'));
        }
        if (!Validate::make()->check(['images' => $images], ['images' => 'require'])) {
            $this->error(__('待打印图片为空'));
        }
        
        // 开始转为本地图片
        $fielnames="photowall".date("Ymdhis").strval(rand(1,10000)).".jpg";
        $images = base64_decode(substr(strstr($images, ','), 1));
        $filename=ROOT_PATH.'public/uploads/photowall/'.$fielnames;
        file_put_contents($filename,$images);
    
        $nums=$this->getRandCode(6);
        $datas=[
            'phones'=>$phone,
            'printimage'=>'/uploads/photowall/'.$fielnames,
            'phototem_id'=>$id,
            'status'=>0,
            'name'=>$name,
            'nums'=>$nums,
            'createtime'=>time(),
            'updatetime'=>time(),
            
        ];
        Db::name("photorecore")->insert($datas);
        $this->success('保存成功',$nums);
            
    }
    
    public function savebanerre(){
        
        $id=input("id")?intval(input("id")):"";
        $images=input('images')?input("images"):"";
        $fonts=input('fonts')?input("fonts"):"";
        $name=input('name')?input("name"):"";
        $phone=input("phones")?intval(input('phones')):"";
        
        if (!Validate::make()->check(['id' => $id], ['id' => 'require|number'])) {
            $this->error(__('id为空'));
        }
        if (!Validate::make()->check(['phone' => $phone], ['phone' => 'require'])) {
            $this->error(__('手机为空'));
        }
        if (!Validate::make()->check(['fonts' => $fonts], ['fonts' => 'require'])) {
            $this->error(__('文字为空'));
        }
        $nums=$this->getRandCode(6);
        $datas=[
            'phones'=>$phone,
            'picimage'=>$images,
            'bannertem_id'=>$id,
            'fonts'=>$fonts,
            'status'=>0,
            'name'=>$name,
            'nums'=>$nums,
            'createtime'=>time(),
            'updatetime'=>time(),
            
        ];
        Db::name("bannerecore")->insert($datas);
        $this->success('保存成功',$nums);
            
    }



    public function savewashphoto(){
        $size=input("size")?input("size"):"";
        $images=input('images')?input("images"):"";
        $phone=input("phones")?intval(input('phones')):"";
        if (!Validate::make()->check(['size' => $size], ['size' => 'require'])) {
            $this->error(__('尺寸为空'));
        }
        if (!Validate::make()->check(['phone' => $phone], ['phone' => 'require'])) {
            $this->error(__('手机为空'));
        }
        if (!Validate::make()->check(['images' => $images], ['images' => 'require'])) {
            $this->error(__('照片为空'));
        }
        $nums=$this->getRandCode(6);
        $datas=[
            'phones'=>$phone,
            'allimages'=>$images,
            'status'=>0,
            'nums'=>$nums,
            'photosize'=>$size,
            'createtime'=>time(),
            'updatetime'=>time(),
            
        ];
        Db::name("waterphoto")->insert($datas);
        $this->success('保存成功',$nums);
            
    }


    public function getphototem(){
        
        header('Access-Control-Allow-Origin:*');//允许跨域
        $phototem=Db::name('phototem')->field("id,name,picimage")->order("updatetime desc")->select();
        foreach($phototem as $k=>$v){
            
            $phototem[$k]['picimage'] = ALIOSS_ADDRESS.$v['picimage'];
            
        }
        $this->success('请求成功',$phototem);
            
    }
    
    
    public function getdocumentDetails(){
        header('Access-Control-Allow-Origin:*');//允许跨域
        $id=input("id")?intval(input("id")):"";
        if (!Validate::make()->check(['id' => $id], ['id' => 'require|number'])) {
            $this->error(__('id为空'));
        }
        
        $conts=Db::name('actions')->field("id,acontents")->where('id',$id)->find();

        $this->success('请求成功',$conts['acontents']);
            
    }
    
    
    public function getdocument(){
        header('Access-Control-Allow-Origin:*');//允许跨域
        $actions=Db::name('actions')->field("id,name,isarrow")->order("weigh asc")->select();

        $this->success('请求成功',$actions);
            
    }
    
    public function getCateImgDetail(){

        $id=input("id")?intval(input("id")):"";
        if (!Validate::make()->check(['id' => $id], ['id' => 'require|number'])) {
            $this->error(__('id为空'));
        }
        
        $imgs=Db::name('sourcman')->field("id,simages")->where('id',$id)->find();
        $arrs=explode(",",$imgs['simages']);
        $res=[];
        foreach($arrs as $k=>$v){
            
            $img=[
                'img'=>ALIOSS_ADDRESS.$v,
                'smallimg'=>ALIOSS_ADDRESS.$v.'?x-oss-process=style/design_style',
            ];
            array_push($res,$img);
            
        }
        
        $this->success('请求成功',$res);
    }
    
    
    public function getphotoparam(){

        $id=input("id")?intval(input("id")):"";
        
        if (!Validate::make()->check(['id' => $id], ['id' => 'require|number'])) {
            $this->error(__('id为空'));
        }
        
        $phototem=Db::name('phototem')->field("coordinate")->where('id',$id)->find();
        $phoata=json_decode($phototem['coordinate'],true);
        foreach($phoata as $k=>$v){
            $phoata[$k]['id']=$k+1;
            $phoata[$k]['img']=false;
            $phoata[$k]['twidth']=0;
            $phoata[$k]['theight']=0;
            $phoata[$k]['scale']=1;
            $phoata[$k]['rotate']=0;
            $phoata[$k]['tranx']=0;
            $phoata[$k]['trany']=0;
            $phoata[$k]['centerx']=0;
            $phoata[$k]['centery']=0;
            $phoata[$k]['zindex']=1;
        };
        
        

        $colors=Db::name('fontcolor')->where('id',1)->find();
        $sourcman=Db::name('sourcman')->field("id,name")->order("weigh asc")->select();
        $imgs=Db::name('sourcman')->field("id,simages")->where('id',$sourcman[0]['id'])->find();
        
        $arrs=explode(",",$imgs['simages']);
        $res=[];
        foreach($arrs as $k=>$v){
            
            $img=[
                'img'=>ALIOSS_ADDRESS.$v,
                'smallimg'=>ALIOSS_ADDRESS.$v.'?x-oss-process=style/design_style',
            ];
            array_push($res,$img);
            
        }
        
        $data=[
            'colors'=>explode(",",$colors['colors']),
            'catename'=>$sourcman,
            'allimg'=>$res,
            'photowall'=>$phoata,
            'oldphoto'=>json_decode($phototem['coordinate'],true)
        ];
        $this->success('请求成功',$data);
        
    }
    
    
    
    public function getRandCode($num=16){
        //   $array=array(
        //       'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'
        //   );
          $array=array('0','1','2','3','4','5','6','7','8','9');
          $tamstr='';
          $max=count($array);
          for($i=1;$i<=$num;$i++){
              $key=rand(0,$max-1);
              $tamstr.=$array[$key];
          }
          return $tamstr;
    }

    
    
    
}
