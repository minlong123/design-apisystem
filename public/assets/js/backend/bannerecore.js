define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'bannerecore/index' + location.search,
                    add_url: 'bannerecore/add',
                    edit_url: 'bannerecore/edit',
                    del_url: 'bannerecore/del',
                    multi_url: 'bannerecore/multi',
                    import_url: 'bannerecore/import',
                    table: 'bannerecore',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                fixedColumns: true,
                fixedRightNumber: 1,
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'nums', title: __('Nums'), operate: 'LIKE'},
                        {field: 'phones', title: __('Phones'), operate: 'LIKE'},
                        {field: 'fonts', title: __('Fonts'), operate: 'LIKE'},
                        {field: 'picimage', title: __('Picimage'), operate: false, events: Table.api.events.image, formatter: Table.api.formatter.image},
                        {field: 'name', title: __('Name'), operate: 'LIKE'},
                        {field: 'status', title: __('Status'), searchList: {"0":__('Status 0'),"1":__('Status 1'),"2":__('Status 2')}, formatter: Table.api.formatter.status},
                        {
    field: 'createtime', title: __('Createtime'), operate: 'RANGE', addclass: 'datetimerange', formatter(value, row, index) {
        return new Date(parseInt(value) * 1000).toLocaleString().replace(/:\d{1,2}$/, ' ');
    }
},
                        
                        // {field: 'updatetime', title: __('Updatetime'), operate: 'LIKE'},
                        {
    field: 'updatetime', title: __('Updatetime'), operate: 'RANGE', addclass: 'datetimerange', formatter(value, row, index) {
        return new Date(parseInt(value) * 1000).toLocaleString().replace(/:\d{1,2}$/, ' ');
    }
},
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});
