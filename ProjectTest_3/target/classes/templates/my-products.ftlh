<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center"><p class="text-primary">Мои товары</p></h1>
    <hr>
        <form action="/product/create" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="productName">Название товара</label>
                <input type="text" required class="form-control"
                       id="productName" name="title">
            </div>
            <div class="form-group">
                <label for="price">Цена товара</label>
                <div class="input-group mb-3">
                    <input type="number" required class="form-control" id="price" name="price">
                    <div class="input-group-append">
                        <span class="input-group-text">₽</span>
                    </div>
                </div>
                </div>
            <div class="form-group">
                <label for="searchCity">Город</label>
                <select id="searchCity" required name="city" class="form-control">
                    <option value="">Город не выбран</option>

                    <option value="Ульяновск">Ульяновск</option>
                    <option value="Москва">Москва</option>
                    <option value="Казань">Казань</option>
                    <option value="Рязань">Рязань</option>
                    <option value="Елабуга">Елабуга</option>

                </select>
            </div>
            <div class="form-group">
                <label for="description">Описание товара</label>
                <textarea required class="form-control" id="description" name="description"></textarea>
            </div>

            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <button type="submit" style="width: 100%" class="btn btn-primary">Добавить новый товар</button>
        </form>
    </div>
  <div class="card-columns">
          <#list products as product>
                   <a href="/product/${product.id}" class="product-link">
                                  <div class="card" style="width: 18rem;">
                                      <div class="card-body">
                                          <h5 class="card-title">${product.title}</h5>
                                          <div class="card-top">
                                                                                                   <form action="/product/delete/${product.id}" method="post">
                                                                                                       <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                                                                                       <button type="submit" class="btn btn-danger m-3">
                                                                                                           Удалить
                                                                                                       </button>
                                                                                                   </form>
                                                                                               </div>


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