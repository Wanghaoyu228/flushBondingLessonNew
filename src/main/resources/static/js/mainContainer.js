// 跳转加载的页面
function showPage(url , obj) {
    $.ajax({
        url: ctx + url ,
        type:'post',
        success: function (data) {
            try{
              var info = $.parseJSON(data) ;
              if (info.resultCode == 403) {
                  layer.alert("登陆超时，请重新登陆！",{icon:2},function () {
                      location.href = ctx + '/knowledge/index';
                  })
              }
            }catch (e){
                $("#maincontent").html(data) ;
            }
        },
        error: function (XMLHttpRequest) {
            if (XMLHttpRequest.status == 404) {
                layer.msg("该功能还未开发，请等候!",{ icon:2,time: 2000}) ;//2s后自动关闭
            }
        }
    }) ;
}



/**
 * 设置状态图标
 * @param value
 * @param falseVal
 * @param trueVal
 * @returns {string}
 */
function setStateIcon(value, falseVal, trueVal) {
    var operatorHtml = '<div class="layui-table-cell laytable-cell-1-0-11">';
    if (value == 1) {
        operatorHtml += '<a class="layui-btn layui-btn-xs" lay-event="edit">'+falseVal+'</a>';
    } else {
        operatorHtml += '<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">'+trueVal+'</a>' ;
    }
    operatorHtml += ' </div>' ;
    return operatorHtml;
}