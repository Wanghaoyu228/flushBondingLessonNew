package com.hwc.flushBondingLesson.util.response;


/**
 * 前端页面请求时接收的参数值
 *
 * @author chenzhen
 */
@SuppressWarnings("all")
public class PageVO {
    /**
     * page:1 rows:10 sort:id order:desc
     */

    private int page; //当前页(从1开始)  用于app端 ,不可与 offset 参数共用
    private int offset;//偏移的数据量    用户PC端 ,不可与 page 参数共用
    private int limit; //每页的数据数
    private int rows; //为前端分页的每页的记录数

    private String search = "";//精确查询搜索内容
    private String dateStr = "";//日期时间段
    private String likeSearch = "";//模糊查询的内容
    private String sort; //排序字段
    private String order; //排序顺序 desc 或者asc


    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public String getDateStr() {
        return dateStr;
    }

    public void setDateStr(String dateStr) {
        this.dateStr = dateStr;
    }

    public String getLikeSearch() {
        return likeSearch;
    }

    public void setLikeSearch(String likeSearch) {
        this.likeSearch = likeSearch;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }



}
