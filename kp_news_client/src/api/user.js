import http from "@/utils/request";  //axios


/***** 用户(User) 模块 *******/
export function getUserA() {
    return http.request({
        url: "/zjffabc/Admin/getUserA",
        method: "get",
    });
}




/***** 用户(User) 模块 *******/
export function isLogin() {
    return http.request({
        url: "/zjffabc/Admin/GetUserByUserName",
        method: "get",
    });
}


export function login(params) {
    return http.request({
        url: "/zjffabc/Admin/DoLogin",   //http://114.55.59.237:8080/zjffabc/Admin/DoLogin     /user/login
        method: "get",
        params: params,
    });
}  //

//注册
export function register(params) {
    return http.request({
        url: "/zjffabc/Admin/registerUser",
        method: "get",
        params: params,
    });
}
// 注册后给id加个积分表

export function AddNewPoint(params) {
    return http.request({
        url: "/zjffabc/Point/AddNewPoint",
        method: "post",
        params: params,
    });
}

//==========================================================

// // 上传用户头像
export function uploadAvatar(file,userId) {
    let formData = new FormData();
    formData.append("file", file.file);
    console.log()
    return http.post("/zjffabc/Admin/UpdateUserImg", formData, {
        headers: {'Content-Type': 'multipart/form-data'},        
        params:{id:userId}     
    });
}


// 用户编辑 By 用户ID 
export function updateById(params) {
    return http.request({
        url: "/zjffabc/Admin/UpdateUser",
        method: "post",
        params: params,
    });
}

// 用户修改密码 By用户Id 
export function updatePwdById(params) {
    return http.request({
        url: "/user/updatePwdById",
        method: "post",
        data: params,
    });
}

// 用户信息 By用户Id 
export function getDetailById(params) {
    return http.request({
        url: "/zjffabc/Admin/GetUserById",
        method: "get",
        params: params,
    });
}
