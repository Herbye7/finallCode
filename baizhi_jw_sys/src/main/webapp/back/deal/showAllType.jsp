
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>


    <script>
        var $dealparentdg,$parent;
        $(function(){
            $dealparentdg = $("#dealparentdg");
            $parent = $("#parent");
            $dealparentdg.datagrid({
                url:'/baizhi_jw_sys/dealtype/showAll',
                fit:true,
                striped:true,
                columns:[[
                    {title:"编号",field:"id",width:100,align:'center'},
                    {title:"分类",field:"name",width:100,align:'center'},
                    {title:"操作",field:"options",width:500,align:'center',
                        formatter:function(value,row,index){
                              return  "<a class='edit' onClick=\"editRow('"+ row.id +"')\"  href='javascript:;'>修改</a>&nbsp;&nbsp;"+
                                "<a class='edit' onClick=\"showtypes('"+ row.id +"')\"  href='javascript:;'>查看详细分类</a>&nbsp;&nbsp;"+
                                "<a class='edit' onClick=\"showAllCase('"+ row.id +"')\"  href='javascript:;'>查看分类下所有案例</a>&nbsp;&nbsp;"
                                ;
                        }
                    }
                ]],
                onLoadSuccess:function(data){
                    $(".del").linkbutton({
                        plain:true,
                        iconCls:'icon-remove',
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
            $parent.dialog({
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
                    handler:closeDa1,
                }]


            })
        }

        //删除的操作
        function del(id){
            $.messager.confirm("提示","您确定要删除吗?",function(r){
                if(r){
                    //发送异步请求删除数据
                    $.post("/baizhi_jw_sys/dealtype/delete",{id:id});
                    console.log(id);
                    console.log("删除");
                    $dealparentdg.datagrid('reload');
                }
            });
        }

        //修改的操作
        function editRow(id,name){
            $parent.dialog({
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
                    handler:closeDa1,
                }]

            });

        }

        //查看分类
        function showtypes(id){
            $parent.dialog({
                width:600,
                height:300,
                title:"分类详情",
                iconCls:"icon-man",
                href:'/baizhi_jw_sys/back/deal/showChildType.jsp?id='+id,
                buttons:[{
                    text:'保存',
                    iconCls:'icon-save',
                    handler:updateUser,
                },{
                    text:'关闭',
                    iconCls:'icon-cancel',
                    handler:closeDa1,
                }]

            });

        }



        //查看案例
        function showAllCase(id){
            $parent.dialog({
                width:600,
                height:300,
                title:"案例详情",
                iconCls:"icon-man",
                href:'/baizhi_jw_sys/back/deal/showByOneType.jsp?id='+id,
                buttons:[{
                    text:'保存',
                    iconCls:'icon-save',
                    handler:updateUser,
                },{
                    text:'关闭',
                    iconCls:'icon-cancel',
                    handler:closeDa1,
                }]

            });

        }
        //更新信息
        function updateUser(){
            $("#updateType").form('submit',{
                url:'/baizhi_jw_sys/lawertype/update',
                success:function(){
                    $parent.dialog('close',true);
                    $dealparentdg.datagrid('reload');
                }
            });
        }

        //保存
        function saveUser(){
            $("#addType").form('submit',{
                url:'/baizhi_jw_sys/lawertype/save',
                success:function(){
                    $parent.dialog('close',true);
                    $dealparentdg.datagrid('reload');
                }
            });
        }

        //关闭对话框
        function closeDa1(){
            $parent.dialog('close',true);
        }
    </script>
</head>
<body>



<table id="dealparentdg"></table>



<div id="parent">

</div>




