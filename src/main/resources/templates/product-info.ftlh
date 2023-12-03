<#import "blocks/template.ftlh" as t>
<@t.template user>
 <h4>Подробная информация о товаре</h4>

 <b>Название товара: </b>${product.title}<br>
 <b>Описание товара: </b>${product.description}<br>
 <b>Цена: </b>${product.price}<br>
 <b>Город: </b>${product.city}<br>
 <b>Автор: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>

</@t.template>