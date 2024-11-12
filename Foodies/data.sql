CREATE TABLE foodorder (
  ID INT,
  Name VARCHAR(25),
  Price int,
  Recipe varchar(100),
  Macronutrients varchar(100),
  Suggestions varchar(25),
  PRIMARY KEY (ID)
  );

/* review table*/

CREATE TABLE reviews (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user VARCHAR(30) NOT NULL,
  email_id VARCHAR(50) NOT NULL,
  Item varchar(50) NOT NULL,
  review TEXT NOT NULL
);

/* admin table*/

CREATE TABLE admins (
    id INT AUTO_INCREMENT,
    username VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255),
    PRIMARY KEY (id)
);

/* data inserting in the database*/
/inserting the data in the database/
 insert into foodorder values(10,'Aloo Chaat',70,'Ingredients:Potatoes: 2 medium, boiled and cubed,Onion: 1 small, finely chopped,Tomato: 1 small, finely chopped,finely chopped,Red Chili Powder: 1/2 teaspoon','Macro Nutrients (approximate values per serving):Calories: 150-200 kcal,Carbohydrates: 30-35 grams,Protein: 2-4 grams,Fat: 5-8 grams,Fiber: 4-5 grams','Masala Papad');
 
 insert into foodorder values(1,'Paneer Butter Masala',130,'Ingredients:- Paneer: 250 grams (cubed)Tomatoes: 3 large (pureed)
,Ginger-Garlic Paste: 1 tablespoon,Fresh Cream: 3 tablespoons,Red Chili Powder: 1 teaspoon,Turmeric Powder: 1/2 teaspoon','Macro Nutrients - Calories: 330 kcal,Protein: 10g,Carbohydrates: 12g,Fat: 27g,Fiber: 3g,Sugar: 6g','kaju butter masala,Tandoori Roti');
 
 insert into foodorder values(2,'Chocolate Brownie',120,'Ingredients:- 1 cup (125g) all-purpose flour
,1/2 cup (115g) unsalted butter,2 large eggs,1/4 teaspoon baking powder,1/4 teaspoon salt,1 teaspoon vanilla extract,1/2 cup (90g) chocolate chips (optional)','Macro Nutrients (approximate values per serving):Calories: 200 kcal,Carbohydrates: 27g,Protein: 2g,Fat: 10g','Butter scotch icecream');
 
 insert into foodorder values(3,'Vanilla CupCake',50,'Ingredients:- 1 1/2 cups (190g) all-purpose flour
,1 1/2 teaspoons baking powder,1/4 teaspoon salt,1/2 cup (115g) unsalted butter,,1 cup (200g) granulated sugar,2 large eggs
,1/2 cup (120ml) whole mil','Macro Nutrients (approximate values per serving):- Calories: 180 kcal,Carbohydrates: 25g,Protein: 2g,Fat: 8g
,Saturated Fat: 5g,Sugar: 15g,Sodium: 100mg','Chocolate Icecream');
 
 insert into foodorder values(4,'CheeseCake',60,'Ingredients:,1 1/2 cups (150g) graham cracker crumbs,1/4 cup (50g) granulated sugar,1/2 cup (115g) unsalted butter, melted,Optional Toppings:
,Fresh fruit, fruit compote, or chocolate ganache','Macro Nutrients (approximate values per serving):Calories: 350-400 kcal,Carbohydrates: 25-30g,Protein: 6-8g,Fat: 25-30g,Saturated Fat: 15-18g,Fiber: 0-1g,Sugar: 20-25g
,Sodium: 250-300mg','Chocolate Chip Cookie');

insert into foodorder values(5,'Apple Pie',60,'Ingredients:Crust:2 ½ cups all-purpose flour1 cup unsalted butter, chilled and cubed1 teaspoon salt1 tablespoon sugar6-8 tablespoons ice waterFilling:6-8 medium apples (Granny Smith, Honeycrisp, or a mix), peeled, cored, and sliced¾ cup sugar2 tablespoons all-purpose flour1 teaspoon ground cinnamon¼ teaspoon ground nutmeg1 tablespoon lemon juice1 tablespoon unsalted butter, cut into small piece
,:Calories: - 350,Protein: 2 g,Carbohydrates: 50 g,Fiber: 3 g,Sugars: 30 g,Fat: 15 g
,Saturated Fat: 9 g ','Chocolate Chip Cookie');

 insert into foodorder values(6,'Chocolate chip cookie',50,'Ingredients: 1 cup unsalted butter, softened1 cup granulated sugar1 cup brown sugar, packed2 large eggs1 teaspoon vanilla extract3 cups all-purpose flour1 teaspoon baking soda½ teaspoon baking powder½ teaspoon salt2 cups chocolate chip','Macro Nutrients (approximate values per serving):- Calories: 180
,Protein: 2 g
,Carbohydrates: 23 g
,Fiber: 1 g
,Sugars: 15 g
,Fat: 9 g
,Saturated Fat: 5 g','Cheese Cake');

 insert into foodorder values(7,'Masala Papad',60,'Ingredients:4 papads (usually urad dal papads)1 medium onion, finely chopped1 medium tomato, finely chopped1 green chili, finely chopped (optional)1 tablespoon fresh coriander leaves, finely chopped1 teaspoon chaat masala½ teaspoon red chili powder (optional)1 teaspoon lemon juiceSalt to tasteOil for roasting or frying (as per your preference:','Calories: 120-150 kcal
,Carbohydrates: 12-15g,Protein: 3-5g,Fat: 5-7g,Saturated Fat: 1-2g,Fiber: 2-3g,Sugar: 1-2g
,Sodium: 150-250mg','Tomato Soup');

 insert into foodorder values(8,'Tomato Soup',60,'Ingredients:6 ripe tomatoes, chopped1 onion, chopped2 cloves garlic, chopped1 cup vegetable broth1 tablespoon olive oilSalt and pepper to taste1 teaspoon sugar (optional)Fresh basil or cream for garnish (optional)
','Macro Nutrients (approximate values per serving):Calories: 90-110 kcal
,Carbohydrates: 15-18g,Protein: 2-3g,Fat: 3-5g,Saturated Fat: 0.5-2g,Fiber: 3-4g,Sugar: 8-10g,Sodium: 400-600mg','Paneer Mancurian');
 
 insert into foodorder values(9,'Paneer Manchurian',50,'Ingredients:200g paneer, cubed2 tbsp cornflour2 tbsp all-purpose flour1 tsp ginger-garlic paste1 tsp soy sauceSalt, 1 capsicum, chopped1 tbsp each: soy sauce,chili sauce1 tsp vinegar, 1 tsp sugar1 tbsp cornflour mixed with water
','Macro Nutrients (approximate values per serving):- Calories: 250-300 kcal,Carbohydrates: 20-25g,Protein: 12-15g,Fat: 15-20g,Saturated Fat: 8-10g,Fiber: 2-3g,Sugar: 6-8g,Sodium: 800-1000mg','Masala Papad');
 
  insert into foodorder values(12,'Jeera Rice',70,'Ingredients:- 1 cup basmati rice,1 tablespoon ghee or oil,1 teaspoon cumin seeds,1 medium onion, finely sliced,2-3 cloves garlic, minced,1-inch piece of ginger, minced
,1 bay leaf,2-3 whole cloves,1-2 green cardamom pods,2 cups water, Salt to taste','Macro Nutrients (approximate values per serving):- Calories:* 200-220 kcal,Carbohydrates: 40-45g,Protein: 4-5g,Fat: 4-6g,Saturated Fat: 2-3g,Fiber: 1-2g,Sugar: 0g,Sodium: 150-200mg','Daal Fry');

 insert into foodorder values(13,'Mix Veg',80,'Ingredients:- 1 tablespoon oil or ghee,1 medium onion, minced,1-2 green chilies,1 medium tomato, chopped,1 cup green beans,1 cup peas,1/2 cup potato,1/2 teaspoon turmeric powder,1 teaspoon garam masala,Salt to taste','Macro Nutrients (approximate values per serving):- Calories: 150-180 kcal
,Carbohydrates: 25-30g,Protein: 4-6g,Fat: 5-7g,Saturated Fat: 1-2g,Fiber: 6-8g,Sugar: 8-10g,Sodium: 200-300mg','Paneer Butter MasalaK,Kulacha Roti');
 
 insert into foodorder values(14,'Ghee Rice',70,'Ingredients:- 1 cup basmati rice,2 tablespoons ghee,1 teaspoon cumin seeds,2-3 green cardamom pods,1-inch piece of cinnamon stick,3-4 cloves,1 bay leaf,1 medium onion,1-2 green chilies,Salt to taste,Fried onions for garnish (optional)','Macro Nutrients (approximate values per serving):- Calories: 250-280 kcal,Carbohydrates: 40-45g
,Protein: 4-5g,Fat: 10-15g,Saturated Fat: 5-8g,Fiber: 1-2g,Sodium: 150-200mg','Daal Fry');
 
 insert into foodorder values(15,'Kulcha roti',10,'Ingredients:- 2 cups all-purpose flour,1/2 cup plain yogurt,1/4 cup milk,1 tablespoon sugar,1 teaspoon active dry yeast,1/2 teaspoon baking powder,1/2 teaspoon baking soda,1/2 teaspoon salt,2 tablespoons ghee,1 tablespoon kalonji ','Macro Nutrients (approximate values per serving):
,Calories: 200-250 kcal,Carbohydrates: 30-35g,Protein: 5-6g,Fat: 8-10g,Saturated Fat: 3-5g,Fiber: 1-2g,Sugar: 2-4g,Sodium: 300-350mg','Kaju Butter Masal,Mix Veg');
 
 insert into foodorder values(16,'Masala Roti',60,'Ingredients:- 2 cups whole wheat flour,1/2 teaspoon cumin seeds,1/2 teaspoon turmeric powder,1/2 teaspoon garam masala,2 tablespoons fresh coriander leaves,1 green chili,Salt to taste,2 tablespoons oil
, as needed','Macro Nutrients (approximate values per serving):- Calories:* 150-180 kcal,Carbohydrates: 25-30g,Protein: 4-5g,Fat: 3-5g,Saturated Fat: 1-2g,Fiber: 3-4g
,Sugar: 1-2g,Sodium: 150-200mg','Gobi Manchurian');

 insert into foodorder values(17,'Naan Roti',20,'Ingredients:- 2 cups all-purpose flour,1/2 cup plain yogurt,1/4 cup warm milk,1 tablespoon sugar,1 teaspoon active dry yeast,1/2 teaspoon baking powder,1/2 teaspoon salt,2 tablespoons ghee or oil,1-2 cloves garlic,
,Nigella seeds','Macro Nutrients (approximate values per serving):- Calories: 250-300 kcal,Carbohydrates: 35-40g,Protein: 6-8g,Fat: 8-12g,Saturated Fat: 4-6g,Fiber: 1-2g,Sugar: 2-4g,Sodium: 300-400mg','Paneer Butter Masala,Mix Veg');

 insert into foodorder values(18,'Shezwan Fried Rice',60,'Ingredients:- 2 cups cooked basmati rice (preferably cold),2 tablespoons vegetable oil,1 tablespoon Schezwan sauce (adjust to taste),1 medium onion, finely chopped,1 cup mixed vegetables, finely chopped
,Salt to taste','Macro Nutrients (approximate values per serving):- Calories: 250-300 kcal,Carbohydrates: 40-45g,Protein: 6-8g,Fat: 8-10g,Saturated Fat: 1-2g,Fiber: 3-4g,Sugar: 6-8g,Sodium: 800-1000mg','Mamchow Soup');
 
 insert into foodorder values(19,'Veg Dum Biryani',90,'Ingredients:1.5 cups basmati rice,3 cups water,2-3 green cardamom pods,2-3 cloves,1-inch cinnamon stick,1 bay leaf,Salt to taste,Fresh mint leaves,','Macro Nutrients (approximate values per serving):- Calories: 300-350 kcal
,Carbohydrates: 50-60g,Protein: 6-8g,Fat: 10-15g,Saturated Fat: 3-5g,Fiber: 5-7g,Sugar: 6-8g,Sodium: 400-600mg','Masala Papad');
 
 insert into foodorder values(20,'Kaju Butter Masala',100,'Ingredients:- 2 tablespoons butter or ghee
,1 tablespoon vegetable oil,1 medium onion, finely chopped,2-3 cloves garlic, minced,1-inch piece ginger, minced,1-2 green chilies, slit (optional),Salt to taste,Fresh coriander leaves for garnish','Macro Nutrients (approximate values per serving):- Calories: 350-400 kcal
,Carbohydrates: 15-20g,Protein: 7-10g,Fat: 25-30g,Saturated Fat: 10-15g,Fiber: 2-3g,Sugar: 10-12g,Sodium: 400-600mg','Veg Kolhapuri,Kulcha Roti');

insert into foodorder values(21,'Masala Dosa',50,'Ingredients:1 cup rice½ cup urad dal Water Salt to tasteFor Potato Filling:2-3 medium potatoes 1 onion 1 green chili ','Macro Nutrients (approximate values per serving):Calories: 250-300 kcalProtein: 6-8 gramsCarbohydrates: 35-40 gramsFat: 10-15 gram','Tea');

insert into foodorder values(22,'Idli',30,'Ingredients:Rice - 1 cupMicronutrients: B vitamins (especially thiamine and niacin), iron, magnesiumUrad Dal - 1/4 cupMicronutrients: Iron, magnesium, calcium, potassi:Iron, calcium, magnesium, potassiumSalt - to tasteMicronutrients: SodiumWater - as needed','Tea');

insert into foodorder values(23,'Vada',20,'Ingredients:1 cup (micronutrients: iron, magnesium, calcium)Onion - 1 medium, chopped (micronutrients: vitamin C, vitamin B6','Tea');

insert into foodorder values(24,'Manglore Buns',25,'Ingredients:2 cups all-purpose flour1 ripe banana (mashed)¼ cup sugar½ cup yogurt1 tsp baking powder¼ tsp baking soda½ ','Macro Nutrients:Calories: 150-200 kcalProtein: 2-3 gramsCarbohydrates: 25-30 gramsFat: 5-8 grams','Tea');

insert into foodorder values(25,'Puri',40,'Ingredients:2 cups whole wheat flour1 tbsp semolina (optional, for crispiness)1 tsp carom seeds (ajwain)1 tsp sugar¼','Macro Nutrients:Calories:80-100 kcalProtein: 2-3 gramsCarbohydrates: 12-15 gramsFat: 3-5 grams ','Tea');

insert into foodorder values(26,'Mysore Bonda',20,'Ingredients:1 cup all-purpose flour½ cup semolina (rava)½ cup yogurt1 cup chopped onions2-3 green chilies (finely chopped','Macro Nutrients:Calories:60-80 kcalProtein: 1-2 gramsCarbohydrates: 8-10 gramsFat: 3-5 grams','Tea');

insert into foodorder values(27,'Tofu-Bhurji',50,'Ingredients:1 cup all-purpose flour½ cup semolina (rava)½ cup yogurt1 cup chopped onions2-3 green chilies (finely chopped)1','Macro Nutrients:Calories:150-200 kcalProtein: 2-3 gramsCarbohydrates: 25-30 gramsFat: 5-8 gram','Tea');

insert into foodorder values(28,'Moong-Dal',50,'Ingredients:1 cup moong dal (split yellow gram)1 onion (chopped)1 tomato (chopped)1 green chili (chopped)1 ','Macro NutrientsCalories:150-200 kcalProtein: 10-15 gramsCarbohydrates: 20-25 gramsFat: 5-7 grams','Tea');

insert into foodorder values(31,'Uttapam',45,'Ingredients:1 cup dosa batter (fermented rice and urad dal batter)1 onion (finely chopped)1 tomato (finely chopped)1-2 green chilies,1 small carrot','Macro Nutrients :Calories:150-200 kcalProtein: 5-7 gramsCarbohydrates: 25-30 gramsFat: 5-7 grams ','Tea');

insert into foodorder values(32,'Bread-Butter',30,'Ingredients:2 slices of bread (white, whole wheat, or multigrain)1-2 tsp butter (softened)','Macro Nutrients :Calories: 150-200 kcalProtein: 3-5 gramsCarbohydrates: 20-25 gramsFat: 7-10 grams ','Tea');

insert into foodorder values(33,'North-Idian-Thali',120,'Ingredients:  Roti, dal, sabzi, rice, curd;','Macro Nutrients :Calories:600-800 kcal, 15-20 g protein, 70-90 g carbs, 20-30 g fat.','Aloo-Gobi');

insert into foodorder values(34,'South-Idian-Thali',120,'Ingredients: ','Macro Nutrients :Calories:  15-20 g protein, 70-90 g carbs, 20-30 g fat.','Chana-Masala');

insert into foodorder values(35,'Gujarati-Thali',150,'Ingredients: Roti, dal, sabzi, rice, papad','Macro Nutrients :Calories:15-20 g protein, 70-90 g carbs, 20-30 g fat.','Rumali-Roti');

insert into foodorder values(36,'Maharastrian-Thali',130,'Ingredients:Chapati, bhaji, rice, dal, curd','Macro Nutrients :Calories: 15-20 g protein, 70-90 g carbs, 20-30 g fat','Venilla Cake');

insert into foodorder values(37,'Rajasthani-Thali',145,'Ingredients:Roti, dal, sabzi, rice, papad','Macro Nutrients :Calories:600-800 kcal, 15-20 g protein, 70-90 g carbs, 20-30 g fat.','Aloo-Gobi');

insert into foodorder values(29,'Oats-upma',50,'Ingredients:1 cup oats1 onion (chopped)1-2 green chilies (chopped)1 carrot (chopped)½ cup peas (optional)1 tsp mustard seeds1 tsp cumin seeds','Macro Nutrients:Calories:200-250 kcalProtein: 6-8 gramsCarbohydrates: 30-35 gramsFat: 8-10 grams','Tea');

insert into foodorder values(30,'Upit',50,'Ingredients:1 cup semolina (rava)1 onion (chopped)1-2 green chilies (chopped)1-2 carrots (chopped)½ cup peas (optional)1 tsp mustard seeds1 tsp cumin seeds','Macro Nutrients:Calories:200-250 kcalProtein: 6-8 gramsCarbohydrates: 30-35 gramsFat: 8-10 grams ','Tea');

insert into foodorder values(38,'Dal-Tadaka',60,'Ingredients:1 cup toor dal (split pigeon peas) or mixed lentils1 onion, finely chopped2 tomatoes, chopped1-2 green chili','Macro Nutrients:Calories: 200-250 kcalProtein: 10-12 gramsCarbohydrates: 30-35 gramsFat: 7-10 grams','Tea');

insert into foodorder values(39,'Aloo-Gobi',55,'Ingredients: 2 medium potatoes, peeled and cubed1 small cauliflower, cut into florets1 onion, finely chopped2 tomatoes, chopped1-2 green chilies, chopped','Macro Nutrients :Calories: 150-180 kcalProtein: 3-4 gramsCarbohydrates: 25-30 gramsFat: 6-8 grams ','Tea');

insert into foodorder values(40,'Chana-Masala',65,'Ingredients:1 cup dried chickpeas, onion, finely chopped2 tomatoes, chopped1-2 green chilies, chopped1 tsp ginger-garlic','Macro Nutrients :Calories: 200-250 kcalProtein: 10-12 gramsCarbohydrates: 30-35 gramsFat: 6-8 grams','Tea');

insert into foodorder values(41,'Veg-Biryani',65,'Ingredients:1 cup basmati rice1.5 cups mixed vegetables (carrot, peas, potato, beans, cauliflower, etc.), chopped1 onion,','Macro Nutrients :Calories: 200-250 kcalProtein: 4-6 gramsCarbohydrates: 35-45 gramsFat: 7-10 grams ','Tea');

insert into foodorder values(42,'Rumali-Roti',15,'Ingredients:2 cups all-purpose flour (maida)1 cup whole wheat flour (optional, for a blend of textures)1 tsp salt1','Macro Nutrients :Calories: 150-200 kcalProtein: 4-6 gramsCarbohydrates: 30-35 gramsFat: 2-5 grams ','Tea');

insert into foodorder values(43,'Vegitable Manchow Soup',15,'Ingredients:1 cup chopped mixed vegetables (carrot, beans, capsicum, mushrooms, etc.)1 onion, finely chopped','Macro Nutrients:Calories: 80-120 kcalProtein: 2-4 gramsCarbohydrates: 12-15 gramsFat: 3-5 grams','Tea');

insert into foodorder values(44,'Mulligatawny Veg Soup',50,'Ingredients:1 cup chopped onions2 cloves garlic, minced1-inch piece of ginger, minced1 cup chopped carrots1 cup','Macro Nutrients :Calories:Calories: 150-200 kcalProtein: 8-10 gramsCarbohydrates: 25-30 gramsFat: 4-6 grams','Tea');