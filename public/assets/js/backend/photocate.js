define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'photocate/index' + location.search,
                    add_url: 'photocate/add',
                    edit_url: 'photocate/edit',
                    del_url: 'photocate/del',
                    multi_url: 'photocate/multi',
                    import_url: 'photocate/import',
                    table: 'photocate',
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