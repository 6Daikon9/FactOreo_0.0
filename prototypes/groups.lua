data:extend({

  {
    type = "recipe-category",
    name = "FactOreoCategory",
    icon = "__FactOreo__/graphics/FactOreo-recipe.png",  -- Укажите путь к иконке вашей категории рецептов
    icon_size = 256,  -- Укажите размер иконки
    order = "d",  -- Порядок сортировки вкладки
    inventory_order = "d",
  },
  
  {
    type = "item-group",
    name = "factoreo-subgroup",
    icon = "__FactOreo__/graphics/FactOreo-group.png",  -- Укажите путь к иконке вашей вкладки
    icon_size = 256,  -- Укажите размер иконки
    order = "z",  -- Порядок сортировки вкладки
  }
})
