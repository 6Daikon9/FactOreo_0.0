local allow_decomp  -- Объявляем переменную за пределами блока if

if mods["quality"] then
  allow_decomp = false  -- Присваиваем значение без 'local'
else
  allow_decomp = true  -- Присваиваем значение без 'local'
end

data:extend({  
 {
    type = "item",
    name = "fish-paste",
    icon = "__FactOreo__/graphics/icons/fish-paste.png",
    icon_size = 64,
    group = "FactOreoGroup",
    order = "a[FactOreo-Alpha]",
    stack_size = 200,
    quality = true
 },
 {
    type = "item",
    name = "crust",
    icon = "__FactOreo__/graphics/icons/oreo-crust.png",
    icon_size = 64,
    group = "FactOreoGroup",
    order = "b[FactOreo-Alpha]",
    stack_size = 100,
    quality = true
 },
 {
    type = "capsule",
    name = "oreo-biscuit",
    icon = "__FactOreo__/graphics/icons/oreo-biscuit.png",
    icon_size = 64,
    group = "FactOreoGroup",
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                {
                  type = "damage",
                  damage = {type = "physical", amount = -150}
                },
              }
            }
          }
        }
      }
    },
    order = "c[oreo-biscuit]",
    stack_size = 100,
    quality = true
 },
    
 -- new recipe   
 {
    type = "recipe",
    name = "fish-paste",
    ingredients = {
      { type = "item", name = "raw-fish", amount = 1 }
      },
    category = "crafting",
    order = "a[fish-paste]",
    results = {
      { type = "item", name = "fish-paste", amount = 1 }
    },
    group = "bee-group",
    subgroup = "factoreo-subgroup",
    order = "c"
 },   
 {
    type = "recipe",
    name = "crust",
    ingredients = {
      { type = "item", name = "wood", amount = 5 }
    },
    category = "crafting",
    order = "b[crust]",
    results = {
    { type = "item", name = "crust", amount = 1 }
    },
    group = "bee-group",
    subgroup = "factoreo-subgroup",
    order = "b"
 },
 {
    type = "recipe",
    name = "oreo-biscuit",
    enabled = true,
    ingredients = {
      { type = "item", name = "crust", amount = 1 },
      { type = "item", name = "fish-paste", amount = 1 }
      },
    results = {
      { type = "item", name = "oreo-biscuit", amount = 1 }
    },
    energy_required = 10,  -- Пример: время, необходимое для крафта в секундах
    category = "crafting",  -- Может быть "crafting", "smelting", "chemistry", и другие в зависимости от вашего предпочтения
    group = "bee-group",
    subgroup = "factoreo-subgroup",
    order = "a"
 },    
})
