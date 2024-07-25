const menu = {
    list() {
        return [{
            "backMenu": [{
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "轮播图管理",
                    "tableName": "config"
                }, {
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "公告管理",
                    "tableName": "news"
                }, {"buttons": ["新增", "查看", "修改", "删除"], "menu": "在线客服", "tableName": "chat"}], "menu": "系统管理"
            },{
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "板块分类",
                    "menuJump": "列表",
                    "tableName": "wenzhangfenlei"
                }], "menu": "板块管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "博主",
                    "menuJump": "列表",
                    "tableName": "bozhu"
                }], "menu": "博主信息"
            }, {
                "child": [{
                    "buttons": ["查看", "修改", "删除", "查看评论"],
                    "menu": "帖子信息",
                    "menuJump": "列表",
                    "tableName": "wenzhangxinxi"
                }], "menu": "文章管理"
            }, {
                "child": [{
                    "buttons": ["查看", "修改", "删除", "查看评论"],
                    "menu": "舆情管理",
                    "menuJump": "列表",
                    "tableName": "yuqing"
                }], "menu": "舆情信息列表"
            }, {
                "child": [{
                    "buttons": ["查看", "修改", "删除", "审核"],
                    "menu": "舆情预警",
                    "menuJump": "列表",
                    "tableName": "jubaotousu"
                }], "menu": "舆情管理"
            }],
            "frontMenu": [{
                "child": [{
                    "buttons": ["查看"],
                    "menu": "帖子信息列表",
                    "menuJump": "列表",
                    "tableName": "wenzhangxinxi"
                }], "menu": "帖子信息模块"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "否",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "管理员",
            "tableName": "users"
        }, {
            "backMenu": [{
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除", "查看评论"],
                    "menu": "帖子信息",
                    "menuJump": "列表",
                    "tableName": "wenzhangxinxi"
                }, {
                    "buttons": ["新增", "查看", "修改", "删除", "查看评论"],
                    "menu": "舆情管理",
                    "menuJump": "列表",
                    "tableName": "yuqing"
                }], "menu": "帖子信息管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "舆情预警",
                    "menuJump": "列表",
                    "tableName": "jubaotousu"
                }], "menu": "舆情预警"
            }, {"child": [{"buttons": ["查看", "删除"], "menu": "我的收藏管理", "tableName": "storeup"}], "menu": "我的收藏管理"}],
            "frontMenu": [{
                "child": [{
                    "buttons": ["查看"],
                    "menu": "帖子信息列表",
                    "menuJump": "列表",
                    "tableName": "wenzhangxinxi"
                }], "menu": "帖子信息模块"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "否",
            "hasFrontLogin": "是",
            "hasFrontRegister": "是",
            "roleName": "博主",
            "tableName": "bozhu"
        }]
    }
}
export default menu;
