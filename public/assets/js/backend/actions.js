define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'actions/index' + location.search,
                    add_url: 'actions/add',
                    edit_url: 'actions/edit',
                    del_url: 'actions/del',
                    multi_url: 'actions/multi',
                    import_url: 'actions/import',
                    table: 'actions',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'weigh',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id')},
                        {field: 'name', title: __('Name'), operate: 'LIKE'},
                        {field: 'weigh', title: __('Weigh'), operate: false},
                        {field: 'isarrow', title: __('Isarrow'), searchList: {"1":__('Isarrow 1'),"2":__('Isarrow 2')}, formatter: Table.api.formatter.normal},
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