<?php


namespace app\admin\library;

use think\Config;
use think\Cache;
use think\Log;
use think\Db;

use OSS\OssClient;
use OSS\Core\OssException;

// 非加速oss
class Aliossfileupnot{

    // 阿里云主账号AccessKey拥有所有API的访问权限，风险很高。强烈建议您创建并使用RAM账号进行API访问或日常运维，请登录https://ram.console.aliyun.com创建RAM账号。
    public $accessKeyId = "LTAI5tHLL63yAw7Bw82NkADp";
    public  $accessKeySecret = "nEQ46Yr6AJOHVC77p69kRR3Elp6aep";
    // Endpoint以杭州为例，其它Region请按实际情况填写。
    public  $endpoint = "http://oss-cn-beijing.aliyuncs.com";
    

    public function getnewimg($filePath){

        // 阿里云账号AccessKey拥有所有API的访问权限，风险很高。强烈建议您创建并使用RAM用户进行API访问或日常运维，请登录RAM控制台创建RAM用户。
        $accessKeyId = $this->accessKeyId;
        $accessKeySecret = $this->accessKeySecret;
        // yourEndpoint填写Bucket所在地域对应的Endpoint。以华东1（杭州）为例，Endpoint填写为https://oss-cn-hangzhou.aliyuncs.com。
        $endpoint = $this->endpoint;
        // 填写Bucket名称，例如examplebucket。
        $bucket= "zaiercommon";
        // 填写Object完整路径，例如exampledir/exampleobject.txt。Object完整路径中不能包含Bucket名称。
        $tobjects="";
        $trutime="";

        $tobjects = "uploads/".basename($filePath);
            // $trutime=basename($filePath);
        // <yourLocalFile>由本地文件路径加文件名包括后缀组成，例如/users/local/myfile.txt。
        // 填写本地文件的完整路径，例如D:\\localpath\\examplefile.txt。如果未指定本地路径，则默认从示例程序所属项目对应本地路径中上传文件。
        // $filePath = "D:\\localpath\\examplefile.txt";
        
        try{

            $ossClient = new OssClient($accessKeyId, $accessKeySecret, $endpoint);
            $ossClient->uploadFile($bucket, $tobjects, $filePath);
            
            $data=[
                'statu'=>true,
                'data'=>"",
            ];
            // log::info(json_encode($data));
            // log::info("上传图片");
            return $data;


        } catch(OssException $e) {

    
            $data=[
                'statu'=>false,
                'data'=>$e->getMessage(),
            ];
            // log::info("上传图片");
            // log::info(json_encode($data));
            return $data;

        }
    }

    /**
    * 获取时间戳到毫秒
    * @return bool|string
    */
    public static function msectime(){
        list($msec, $sec) = explode(' ', microtime());
        $msectime = (float)sprintf('%.0f', (floatval($msec) + floatval($sec)) * 1000);
        return $msectimes = substr($msectime,0,13);
    }


}

