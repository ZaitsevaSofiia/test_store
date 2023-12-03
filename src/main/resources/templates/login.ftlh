<#import "blocks/template.ftlh" as t>
<@t.template user>
   <h4><p class="text-primary">Авторизация</p></h4>
   <form action="/login" method="post">
       Эл. почта: <input type="email" name="username"><br><br>
       Пароль: <input type="password" name="password"><br><br>
       <input type="hidden" name="_csrf" value="${_csrf.token}">
       <input type="submit" class="btn btn-info" value="Вход"/ >
   </form>
   <a href="/registration">Зарегистрироваться</a>
</@t.template>