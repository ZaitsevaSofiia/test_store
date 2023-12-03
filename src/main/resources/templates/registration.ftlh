<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h4><p class="text-primary">Регистрация</p></h4>
    <form action="/registration" method="post">
        Имя пользователя: <input type="text" name="name"><br><br>
        Эл. почта: <input type="email" name="email"><br><br>
        Номер телефона: <input type="text" name="phoneNumber"><br><br>
        Пароль: <input type="password" name="password"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
         <input type="submit" class="btn btn-info" value="Зарегистрироваться"/ >
    </form>
    <#if errorMessage??>
        <h2 style="color: red">${errorMessage}</h2>
    </#if>
</@t.template>