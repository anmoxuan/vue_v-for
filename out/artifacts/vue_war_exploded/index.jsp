<%--
  Created by IntelliJ IDEA.
  User: 丶安沫轩
  Date: 2018/8/4
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="js/vue.min.js"></script>
    <script src="js/vue-router.min.js"></script>
    <script src="js/fetch.min.js"></script>
    <style>
        .cess{
            text-decoration: line-through;
        }
    </style>
  </head>
  <body>
  <div id="div1">
    <ul>
        <li @click="toggle(thsk)" :class="{'cess':thsk.cess}" v-for="thsk in thsks">{{ thsk.bady }}</li>
    </ul>
  </div>

  <script>
     new Vue({
         el:"#div1",
         data:{
             thsks:[
                 {bady:'张三',cess:true} ,
                 {bady:'李四',cess:true},
                 {bady:'王五',cess:true}
         ]
         },
         methods:{
             toggle :function (thsk) {
            thsk.cess=!thsk.cess
     }
         }
     })
  </script>

  </body>
</html>
