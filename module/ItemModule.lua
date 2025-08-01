

local module = {}

-- Data tanaman
local allPlants = {
    {
        "Carrot",
        0.275,
        20,
        100
    },
    {
        "Strawberry",
        0.3,
        15,
        100
    },
    {
        "Blueberry",
        0.2,
        20,
        100
    },
    {
        "Orange Tulip",
        0.05,
        850,
        55
    },
    {
        "Tomato",
        0.5,
        30,
        100
    },
    {
        "Corn",
        2,
        40,
        100
    },
    {
        "Daffodil",
        0.2,
        1000,
        45
    },
    {
        "Watermelon",
        7,
        3000,
        70
    },
    {
        "Pumpkin",
        8,
        3400,
        80
    },
    {
        "Apple",
        3,
        275,
        50
    },
    {
        "Bamboo",
        4,
        4000,
        35
    },
    {
        "Coconut",
        14,
        400,
        70
    },
    {
        "Cactus",
        7,
        3400,
        100
    },
    {
        "Dragon Fruit",
        12,
        4750,
        100
    },
    {
        "Mango",
        15,
        6500,
        200
    },
    {
        "Grape",
        3,
        7850,
        200
    },
    {
        "Mushroom",
        25,
        151000,
        220
    },
    {
        "Pepper",
        5,
        8000,
        200
    },
    {
        "Cacao",
        8,
        12000,
        250
    },
    {
        "Beanstalk",
        10,
        28000,
        300
    },
    {
        "Ember Lily",
        12,
        66666,
        450
    },
    {
        "Sugar Apple",
        9,
        48000,
        200
    },
    {
        "Burning Bud",
        12,
        70000,
        500
    },
    {
        "Giant Pinecone",
        5,
        72000,
        375
    },
    {
        "Elder Strawberry",
        6,
        90000,
        280
    },
    {
        "Cauliflower",
        5,
        50,
        150
    },
    {
        "Rafflesia",
        8,
        3500,
        80
    },
    {
        "Green Apple",
        3,
        300,
        200
    },
    {
        "Avocado",
        6.5,
        350,
        300
    },
    {
        "Banana",
        1.5,
        2000,
        100
    },
    {
        "Pineapple",
        3,
        2000,
        70
    },
    {
        "Kiwi",
        5,
        2750,
        300
    },
    {
        "Bell Pepper",
        8,
        5500,
        325
    },
    {
        "Prickly Pear",
        7,
        7000,
        375
    },
    {
        "Loquat",
        6.5,
        8000,
        200
    },
    {
        "Pitcher Plant",
        12,
        52000,
        275
    },
    {
        "Feijoa",
        10,
        13000,
        400
    },
    {
        "Wild Carrot",
        1.3,
        25000,
        100
    },
    {
        "Pear",
        3,
        20000,
        120
    },
    {
        "Cantaloupe",
        5.5,
        34000,
        250
    },
    {
        "Parasol Flower",
        6,
        200000,
        350
    },
    {
        "Rosy Delight",
        10,
        69000,
        450
    },
    {
        "Elephant Ears",
        18,
        77000,
        500
    },
    {
        "Delphinium",
        0.3,
        24000,
        100
    },
    {
        "Lily of the Valley",
        6,
        49120,
        400
    },
    {
        "Traveler\'s Fruit",
        15,
        59000,
        500
    },
    {
        "Peace Lily",
        0.6,
        24000,
        100
    },
    {
        "Aloe Vera",
        5.5,
        69000,
        350
    },
    {
        "Guanabana",
        4,
        70500,
        400
    },
    {
        "Chocolate Carrot",
        0.275,
        11000,
        100
    },
    {
        "Red Lollipop",
        4,
        50000,
        65
    },
    {
        "Blue Lollipop",
        1,
        50000,
        65
    },
    {
        "Candy Sunflower",
        1.5,
        80000,
        85
    },
    {
        "Easter Egg",
        3,
        2500,
        20
    },
    {
        "Candy Blossom",
        3,
        100000,
        40
    },
    {
        "Peach",
        2,
        300,
        70
    },
    {
        "Raspberry",
        0.75,
        100,
        70
    },
    {
        "Papaya",
        3,
        1000,
        60
    },
    {
        "Banana",
        1.5,
        1750,
        100
    },
    {
        "Passionfruit",
        3,
        3550,
        40
    },
    {
        "Soul Fruit",
        25,
        7750,
        200
    },
    {
        "Cursed Fruit",
        30,
        25750,
        200
    },
    {
        "Cranberry",
        1,
        3500,
        50
    },
    {
        "Durian",
        8,
        7500,
        200
    },
    {
        "Eggplant",
        5,
        12000,
        220
    },
    {
        "Lotus",
        20,
        35000,
        650
    },
    {
        "Venus Fly Trap",
        10,
        85000,
        650
    },
    {
        "Nightshade",
        0.5,
        3500,
        100
    },
    {
        "Glowshroom",
        0.75,
        300,
        100
    },
    {
        "Mint",
        1,
        5250,
        150
    },
    {
        "Moonflower",
        2,
        9500,
        200
    },
    {
        "Starfruit",
        3,
        15000,
        250
    },
    {
        "Moonglow",
        7,
        25000,
        400
    },
    {
        "Moon Blossom",
        3,
        66666,
        400
    },
    {
        "Crimson Vine",
        1,
        1250,
        100
    },
    {
        "Moon Melon",
        8,
        18000,
        300
    },
    {
        "Blood Banana",
        1.5,
        6000,
        200
    },
    {
        "Celestiberry",
        2,
        10000,
        200
    },
    {
        "Moon Mango",
        15,
        50000,
        300
    },
    {
        "Rose",
        1,
        5000,
        100
    },
    {
        "Foxglove",
        2,
        20000,
        250
    },
    {
        "Lilac",
        3,
        35000,
        250
    },
    {
        "Pink Lily",
        6,
        65000,
        400
    },
    {
        "Purple Dahlia",
        12,
        75000,
        400
    },
    {
        "Sunflower",
        16.5,
        160000,
        600
    },
    {
        "Lavender",
        0.275,
        25000,
        90
    },
    {
        "Nectarshade",
        0.8,
        50000,
        100
    },
    {
        "Nectarine",
        3,
        48000,
        200
    },
    {
        "Hive Fruit",
        8,
        62000,
        300
    },
    {
        "Manuka Flower",
        0.3,
        25000,
        200
    },
    {
        "Dandelion",
        4,
        50000,
        300
    },
    {
        "Lumira",
        6,
        85000,
        350
    },
    {
        "Honeysuckle",
        12,
        100000,
        400
    },
    {
        "Crocus",
        0.275,
        30000,
        150
    },
    {
        "Succulent",
        5,
        25000,
        175
    },
    {
        "Violet Corn",
        3,
        50000,
        250
    },
    {
        "Bendboo",
        18,
        155000,
        275
    },
    {
        "Cocovine",
        14,
        66666,
        275
    },
    {
        "Dragon Pepper",
        6,
        88888,
        300
    },
    {
        "Bee Balm",
        1,
        18000,
        200
    },
    {
        "Nectar Thorn",
        7,
        44444,
        350
    },
    {
        "Suncoil",
        10,
        80000,
        400
    },
    {
        "Liberty Lily",
        6.5,
        30000,
        350
    },
    {
        "Firework Flower",
        20,
        151000,
        450
    },
    {
        "Stonebite",
        1,
        35000,
        200
    },
    {
        "Paradise Petal",
        2.75,
        25000,
        250
    },
    {
        "Horned Dinoshroom",
        5,
        69000,
        275
    },
    {
        "Boneboo",
        15,
        141141,
        300
    },
    {
        "Firefly Fern",
        5,
        72000,
        400
    },
    {
        "Fossilight",
        4,
        88000,
        500
    },
    {
        "Bone Blossom",
        3,
        200000,
        40
    },
    {
        "Horsetail",
        3,
        30000,
        75
    },
    {
        "Lingonberry",
        0.5,
        35000,
        150
    },
    {
        "Amber Spine",
        6,
        55000,
        250
    },
    {
        "Grand Volcania",
        7,
        70555,
        400
    },
    {
        "Noble Flower",
        5,
        20000,
        250
    },
    {
        "Ice Cream Bean",
        4,
        4500,
        200
    },
    {
        "Lime",
        1,
        1000,
        125
    },
    {
        "White Mulberry",
        3,
        3000,
        200
    },
    {
        "Merica Mushroom",
        30,
        40000,
        20
    },
    {
        "Monoblooma",
        0.5,
        22000,
        150
    },
    {
        "Serenity",
        0.25,
        30000,
        150
    },
    {
        "Taro Flower",
        7,
        120000,
        300
    },
    {
        "Zen Rocks",
        18,
        150000,
        300
    },
    {
        "Hinomai",
        10,
        80000,
        400
    },
    {
        "Maple Apple",
        3.5,
        77777,
        350
    },
    {
        "Zenflare",
        1.4,
        25000,
        90
    },
    {
        "Sakura Bush",
        1.5,
        28575,
        90
    },
    {
        "Soft Sunshine",
        2,
        45000,
        200
    },
    {
        "Spiked Mango",
        15,
        67500,
        400
    },
    {
        "Enkaku",
        5,
        62000,
        200
    },
    {
        "Dezen",
        2,
        29250,
        40
    },
    {
        "Lucky Bamboo",
        5,
        65000,
        300
    },
    {
        "Tranquil Bloom",
        4,
        93333,
        200
    },
    {
        "Mega Mushroom",
        70,
        500,
        2000000
    },
    {
        "Cherry Blossom",
        3,
        500,
        400
    },
    {
        "Purple Cabbage",
        5,
        500,
        70
    },
    {
        "Lemon",
        1,
        350,
        50
    },
    {
        "Pink Tulip",
        0.05,
        850,
        55
    },
    {
        "Dragon Sapling",
        8,
        69000,
        275
    },
    {
        "Sinisterdrip",
        5,
        69000,
        275
    },
    {
        "Twisted Tangle",
        3,
        25000,
        80
    },
    {
        "Veinpetal",
        9,
        25000,
        70
    },
    {
        "Fruitball",
        6,
        7250,
        90
    }
}

-- Data multiplier varian (variant name, dropChance, multiplier)
local variants = {
    {"Normal", 1000, 1},
    {"Gold", 10, 20},
    {"Rainbow", 1, 50}
}

function module.Return_All_Data()
    return allPlants
end

function module.Return_Data(itemName)
    for _, data in ipairs(allPlants) do
        if data[1] == itemName then
            return data
        end
    end
end

function module.Return_Multiplier(variantName)
    for _, v in ipairs(variants) do
        if v[1] == variantName then
            return v[3]
        end
    end
    return 1
end

return module
