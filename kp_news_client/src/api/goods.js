import http from "@/utils/request";

/// 1 查询文章详情

export function getGoodsDetailById(params) {
    return http.request({
        url: "/zjffabc/Article/GetArticleById",
        method: "get",
        params: params,
    });
}

//添加文章阅读数
export function addClickcount(params) {
    return http.request({
        url: "/zjffabc/Article/addClickcount",
        method: "post",
        params: params,
    });
}

export function addLikecount(params) {
    return http.request({
        url: "/zjffabc/Article/addLikecount",
        method: "post",
        params: params,
    });
}