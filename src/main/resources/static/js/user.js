var Knowledge = {
    id: "knowledgeTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

Knowledge.initColumn = function () {
    return [
        {field: 'selectItem', checkbox: true},
        {title: 'id', field: 'uid', visible: false, align: 'center', valign: 'middle'},
        {title: "序号", align: "center",sortable: "true",field: '_index',formatter: function (value, row, index) {value = index + 1;return value;}},
        {title: '账号', field: 'knowledgename', align: 'center', valign: 'middle', sortable: true},
        {title: '姓名', field: 'realName', align: 'center', valign: 'middle', sortable: true},
        {title: '角色类型', field: 'knowledgeType', align: 'center', valign: 'middle', sortable: true,formatter:function (value,row) {
                if (value == 1 ){ return "管理员" ;} else { return "普通开发员" ; } }},
        {title: '所属组织', field: 'orgName', align: 'center', valign: 'middle'},
        {
            title: '操作栏',
            field: '',
            width: '170px',
            align: 'center',
            valign: 'middle',
            sortable: true,
            formatter: function (value, row) {
                return operateHtml(row);
            }
        }
    ];
};

//后台传输参数
Knowledge.getQueryParams_collectAll = function(params) {
    return {
        likeSearch : $('#pageContainer .search input').val(),
        offset: params.offset,
        limit: params.limit,
        order: 'desc',
        sort: 'id'
    };
};

Knowledge.add = function () {
    var modal = new modal_dialog( '/knowledge/openKnowledgePage' , 'add' , '添加用户' , ['确定提交' , '重置'] ,['600px', '450px']);
    modal.init({
        yes :function (index) { // 确定提交的处理逻辑
            var arr = new Array('knowledgename','password','realName','orgId');
            if(checkForm(arr)){
                return false;
            }
            $.ajax({
                url : '/knowledge/save',
                type: 'post' ,
                data :$('#knowledgeForm').serializeArray() ,
                dataType :'json',
                success: function (data) {
                    if(data.code == 0 ) {
                        swal(data.msg, "", "success");
                        Knowledge.table.refresh() ;
                        layer.close(index) ;
                    } else {
                        swal(data.msg, "", "error");
                    }
                }
            });
        },btn2:function (index) {
            $('#knowledgeForm')[0].reset() ;
            form.render()
        }
    }) ;
} ;

Knowledge.update = function(id){
    var modal = new modal_dialog( '/knowledge/openKnowledgePage?id='+id , 'update' , '修改用户' , ['确定提交' ] ,['600px', '450px']);
    modal.init({
        yes :function (index) { // 确定提交的处理逻辑
            var arr = new Array('knowledgename','password','realName','orgId');
            if(checkForm(arr)){
                return false;
            }
            $.ajax({
                url : '/knowledge/update?id='+id,
                type: 'post' ,
                data :$('#knowledgeForm').serializeArray() ,
                dataType :'json',
                success: function (data) {
                    if(data.code == 0 ) {
                        swal(data.msg, "", "success");
                        Knowledge.table.refresh() ;
                        layer.close(index) ;
                    } else {
                        swal(data.msg, "", "error");
                    }
                }
            });
        }
    }) ;
};

Knowledge.delete = function (id) {
    new modal_dialog(ctx + '/knowledge/delete?id='+id , 'delete' , '删除用户信息' ,['确认', '取消']).init({
        deleteStatus:function (data) {
            if(data.code == 0) {
                swal(data.msg, "", "success");
                Knowledge.table.refresh() ;
            } else{
                swal(data.msg, "", "error");
            }
        }
    });
};

/*
 校验表单必填项逻辑
 */
function checkForm(arr){
    for(var i=0;i<arr.length;i++){
        var obj = $("#"+arr[i]);
        if(obj.val()==''){
            layer.tips("请填写必填项！", obj.parent(), {icon: 2});
            return true;
        }
    }
    return false;
}

$(function () {
    var defaultColumns = Knowledge.initColumn();
    var table = new BSTable(Knowledge.id, "/knowledge/showList", defaultColumns);
    table.setQueryParams(Knowledge.getQueryParams_collectAll);
    table.setSearch(true);
    Knowledge.table = table.init();
});
