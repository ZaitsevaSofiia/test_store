<#import "blocks/template.ftlh" as t>
<@t.template user>

    <hr>
    <#if user.email??>
        <h3><p class="text-primary">Имя пользователя: </p> <i><p class="text-primary">${user.name}</p></i></h3>
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" class="btn btn-info" value="Выйти"/ >
        </form>

    <#else>
     <a href="/login">Войти в аккаунт</a></h1>

    </#if>
    <hr>
    <h4><p class="text-primary">Товары</p></h4>

    <div class="card-columns">
    <#list products as product>
         <a href="/product/${product.id}" class="product-link">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">${product.title}</h5>


                            </div>
                            <div class="card-footer">
                                 ${product.price} ₽
                             </div>

                        </div>
                    </a>
                <#else>
                    <h1 style="text-align: center">Не найдено</h1>
                </#list>
            </div>
        </@t.template>