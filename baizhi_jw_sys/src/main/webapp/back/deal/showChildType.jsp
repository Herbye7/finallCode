
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>


    <script>
        var $dealchilddg,$childtype;
        $(function(){
            $dealchilddg = $("#dealchilddg");
            $childtype = $("#childtype");
            $dealchilddg.datagrid({
                url:'/baizhi_jw_sys/dealtype/showAllChild?id=${param.id}',
                fit:true,
                striped:true,
                columns:[[
                    {title:"编号",field:"id",width:100,align:'center'},
                    {title:"分类名",field:"name",width:100,align:'center'},
                    {title:"操作",field:"options",width:500,align:'center',
                        formatter:function(value,row,index){
                          return   "<a class='edit' onClick=\"editRow('"+ row.id +"')\"  href='javascript:;'>修改</a>&nbsp;&nbsp;"+
                            "<a class='edit' onClick=\"showChildType('"+ row.id +"')\"  href='javascript:;'>查看分类下所有案例</a>&nbsp;&nbsp;"
                            ;
                        }
                    }
                ]],
                onLoadSuccess:function(data){
                    $(".del").linkbutton({
                        plain:true,
                        iconCls:'icon-remove'
                    });
                    $(".edit").linkbutton({
                        plain:true,
                        iconCls:'icon-edit',
                    });
                },
                toolbar:[
                    {
                        iconCls:'icon-2012080412486',
                        handler:function(){
                            alert('export!');
                        }
                    },
                    {
                        iconCls:'icon-add',
                        handler:myadd,
                    }

                ]


            }
            );
        });
        //添加分类
        function myadd(){
            $childtype.dialog({
                width:600,
                height:300,
                title:'添加分类',
                iconCls:'icon-man',
                href:'/baizhi_jw_sys/back/lawer/add.jsp',
                buttons:[{
                    text:'save',
                    iconCls:'icon-save',
                    handler:saveUser,
                },{
                    text:'close',
                    iconCls:'icon-cancel',
                    handler:closeDa4,
                }]


            })
        }

        //删除的操作
        function del(id){
            $.messager.confirm("提示","您确定要删除吗?",function(r){
                if(r){
                    //发送异步请求删除数据
                    $.post("/baizhi_jw_sys/lawertype/delete",{id:id});
                    console.log(id);
                    console.log("删除");
                    $dealchilddg.datagrid('reload');
                }
            });
        }

        //修改的操作
        function editRow(id,name){
            $childtype.dialog({
                width:600,
                height:300,
                title:"分类信息",
                iconCls:"icon-man",
                href:'/baizhi_jw_sys/back/lawer/updatetype.jsp?id='+id+'&name='+name,
                buttons:[{
                    text:'保存',
                    iconCls:'icon-save',
                    handler:updateUser,
                },{
                    text:'关闭',
                    iconCls:'icon-cancel',
                    handler:closeDa4,
                }]

            });

        }

        //查看分类下所有案例
        function showChildType(id){
            $childtype.dialog({
                width:600,
                height:300,
                title:"分类详情",
                iconCls:"icon-man",
                href:'/baizhi_jw_sys/back/deal/showByTwoType.jsp?id='+id,
                buttons:[{
                    text:'保存',
                    iconCls:'icon-save',
                    handler:updateUser,
                },{
                    text:'关闭',
                    iconCls:'icon-cancel',
                    handler:closeDa4,
                }]

            });

        }

        //查看案例
        function showDeal(id){
            $childtype.dialog({
                width:600,
                height:300,
                title:"分类详情",
                iconCls:"icon-man",
                href:'/baizhi_jw_sys/back/deal/showByTwoType.jsp?id='+id,
                buttons:[{
                    text:'保存',
                    iconCls:'icon-save',
                    handler:updateUser,
                },{
                    text:'关闭',
                    iconCls:'icon-cancel',
                    handler:closeDa4,
                }]

            });

        }
        //更新信息
        function updateUser(){
            $("#updateType").form('submit',{
                url:'/baizhi_jw_sys/lawertype/update',
                success:function(){
                    $childtype.dialog('close',true);
                    $dealchilddg.datagrid('reload');
                }
            });
        }

        //保存
        function saveUser(){
            $("#addType").form('submit',{
                url:'/baizhi_jw_sys/lawertype/save',
                success:function(){
                    $childtype.dialog('close',true);
                    $dealchilddg.datagrid('reload');
                }
            });
        }

        //关闭对话框
        function closeDa4(){
            $childtype.dialog('close',true);
        }
    </script>
</head>
<body>



<table id="dealchilddg"></table>



<div id="childtype">

</div>




