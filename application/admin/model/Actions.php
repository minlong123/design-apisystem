<?php

namespace app\admin\model;

use think\Model;


class Actions extends Model
{

    

    

    // 表名
    protected $name = 'actions';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'integer';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = false;

    // 追加属性
    protected $append = [
        'isarrow_text'
    ];
    

    protected static function init()
    {
        self::afterInsert(function ($row) {
            $pk = $row->getPk();
            $row->getQuery()->where($pk, $row[$pk])->update(['weigh' => $row[$pk]]);
        });
    }

    
    public function getIsarrowList()
    {
        return ['1' => __('Isarrow 1'), '2' => __('Isarrow 2')];
    }


    public function getIsarrowTextAttr($value, $data)
    {
        $value = $value ? $value : (isset($data['isarrow']) ? $data['isarrow'] : '');
        $list = $this->getIsarrowList();
        return isset($list[$value]) ? $list[$value] : '';
    }




}
