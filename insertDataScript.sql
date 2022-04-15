/*
Only run this script after createDBScript.sql

Assumptions:
We will have a check on the measurement table that when
the value 'whole', 'part' or 'parts' are used it is not followed by 'of'
*/

-- USE master;

USE cocktailDB;
GO

INSERT INTO Category (categoryName) VALUES
('Alcohol'),
('Mix'),
('Garnish'),
('Other'),
('Syrup'),
('Liqueur'),
('Bitter');

INSERT INTO RecipeType(typeName) VALUES
('Cocktail'),
('Mixed drink'),
('Highball'),
('Wine cocktail');

INSERT INTO FlavourProfile(flavourName) VALUES
('Other'),
('Sweet'),
('Sour'),
('Bitter'),
('Spicy'),
('Dry'),
('Sweet & Sour');

INSERT INTO Difficulty (difficultyName) VALUES
('Easy'),
('Medium'),
('Hard');

INSERT INTO Measurement (measurementName) VALUES
('splash'),
('tsp'),
('dash'),
('dashes'),
('whole'),
('part'),
('parts'),
('drops'),
('ml');

INSERT INTO Ingredient (categoryID, ingredientName) VALUES
(1,'Cognac'),
(6,'Amaretto liqueur'),
(1,'brandy'),
(2,'ginger ale'),
(7,'angostura bitter'),
(1,'gin'),
(1,'apricot brandy'),
(2,'orange juice'),
(1,'Pisco'),
(2,'lime juice'),
(5,'simple syrup'),
(4,'egg white'),
(7,'aromatic bitters'),
(1,'port'),
(4,'egg yolk'),
(1,'absinthe'),
(4,'sugar'),
(7,'Peychaud Bitters'),
(1,'triple sec'),
(2,'lemon juice'),
(6,'cherry liqueur'),
(2,'pineapple juice'),
(1, 'Cointreau'),
(1, 'DOM Benedictine'),
(1, 'Creme de Cacao'),
(4, 'light cream'),
(1, 'Calvados'),
(6, 'maraschino liqueur'),
(1, 'Creme de Violette'),
(1, 'dry gin'),
(5, 'honey syrup'),
(5, 'sugar syrup'),
(1, 'creme de mure'),
(7, 'orange bitters'),
(5, 'rasbery syrup'),
(1, 'dry Vermouth'),
(4, 'cocktail foamer'),
(1, 'apple brandy'),
(1, 'sweet Vermouth'),
(7, 'peach bitters'),
(3, 'mint leaves'),
(1, 'champagne'),
(2, 'soda water'),
(1, 'London Dry Gin'),
(1, 'sweet red Vermouth'),
(1, 'Fernet Branca'),
(2, 'carbonated water'),
(1, 'tequila'),
(1, 'vodka'),
(1, 'white rum'),
(1, 'Cointreau'),
(2, 'cola'),
(1, 'Campari'),
(4, 'cream'),
(4, 'orange flower water'),
(4, 'vanilla extract'),
(3, 'ginger beer'),
(1, 'Lilet Blanc'),
(1, 'Goslings Rum'),
(1, 'Jamaican Rum'),
(1, 'Martinique molasses rum'),
(1, 'orange curacao'),
(5, 'orgeat syrup'),
(4, 'coconut cream'),
(2, 'sugar cane juice'),
(1, 'Galliano'),
(4, 'salt'),
(2, 'grapefruit soda'),
(5, 'grenadine syrup'),
(5, 'agave syrup'),
(4, 'water'),
(6, 'coffee liqueur'),
(2, 'tomato juice'),
(4, 'Worcestershire Sauce'),
(4, 'black pepper'),
(1, 'vodka citron'),
(2, 'cranberry juice'),
(1, 'Kahlua'),
(4, 'espresso'),
(2, 'grapefruit juice'),
(1, 'peach schnapps'),
(1, 'Bourbon'),
(1, 'Irish wiskey'),
(4, 'hot coffee'),
(4, 'brown sugar'),
(1, 'rye wiskey'),
(4, 'powdered sugar'),
(1, 'Scotch wiskey'),
(1, 'Drambuie'),
(1, 'Prosecco'),
(4, 'peach puree'),
(1, 'white wine'),
(1, 'Creme de Cassis'),
(1, 'Creme de Menthe (green)'),
(1, 'Creme de Cacao (white)'),
(1,'grenadine'),
(1, 'Creme de Menthe'),
(1, 'Absinthe'),
(4, 'Tobasco sauce'),
(2, 'Lemonade');

INSERT INTO Recipe (flavourID, difficultyID, typeID, recipeName, recipeMethod, recipeImage, containtsAlcohol, recipeTime) VALUES
-- ALTERNATE METHOD:
--(2, 1, 1, 'French Connection', 'Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.', (SELECT * FROM OPENROWSET(BULK N'C:\CocktailAppImages\french-connection.png', SINGLE_BLOB) as frenchConnectionIMG), 1, 5),

(2, 1, 1, 'French Connection', 'Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.', 'https://drive.google.com/file/d/14hcvIxLbuHueemjUnICyDwwUIbMofRfM/view?usp=sharing', 1, 5),
(4, 1, 3, 'Horse Neck', 'Pour brandy and ginger ale directly into highball glass with ice cubes. Stir gently. Garnish with lemon zest. If desired, add dashes of Angostura Bitter.', 'https://drive.google.com/file/d/1jmBaqvKUSYXmuEGSURnKARTlEO2T-KME/view?usp=sharing', 1, 10),
(3, 1, 1, 'Paradise', 'Shake together over ice. Strain into cocktail glass and serve chilled.', 'https://drive.google.com/file/d/1PPsd_6BjG4WOFMldWd2K5KU_FFh7tkXi/view?usp=sharing', 1, 15),
(2, 1, 1, 'Porto Flip', 'Shake ingredients together in a mixer with ice. Strain into glass, garnish with nutmeg and serve', 'https://drive.google.com/file/d/1vN_cl_ArJVUtgOQ8TKT2SaVLkoI54rLU/view?usp=sharing', 1, 15),
(4, 3, 1, 'Sazerac', 'Rinse a chilled old-fashioned glass with the absinthe, add crushed ice, and set it aside. Stir the remaining ingredients over ice and set it aside. Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass. Add a lemon peel for garnish.','https://drive.google.com/file/d/1pJhN8mV7TD3mwG3ZoWop7drovil4ysUU/view?usp=sharing', 1, 20),
(3, 1, 1, 'Sidecar', 'Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.', 'https://drive.google.com/file/d/1yz6ruoZJ-7XSONqmhVN2c1pYjZradVId/view?usp=sharing', 1, 15),
(2, 1, 2, 'Singapore Sling', 'Pour all ingredients into cocktail shaker filled with ice cubes. Shake well. Strain into highball glass. Garnish with pineapple and cocktail cherry.', 'https://drive.google.com/file/d/13n5_HjfHQpTRWximfS9GN3677JXLjw2c/view?usp=sharing', 1, 15),
(2, 1, 1, 'Stinger', 'Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into chilled martini cocktail glass.', 'https://drive.google.com/file/d/1KPhTFU6XcYi9PvuayDEwekRTdnsPmnbL/view?usp=sharing', 1, 15),
(2, 1, 1, 'Alexander', 'Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.', 'https://drive.google.com/file/d/1MLl7tDFx6Zwiv3hZddRmujmFvD3VvQeL/view?usp=sharing', 1, 15),
(2, 1, 1, 'Angel Face', 'Pour all ingredients into cocktail shaker filled with ice cubes. Shake and strain into a chilled cocktail glass.', 'https://drive.google.com/file/d/15iLyGyt6fQBd20fRIYE0_IwXb3JxMGY1/view?usp=sharing', 1, 15),
(3, 1, 1, 'Aviation', 'Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.', 'https://drive.google.com/file/d/10KR3kK2OK4umGmA93TPYtzq2dlD04-hZ/view?usp=sharing', 1, 15),
(3, 2, 1, 'Bees Knees', 'Stir honey syrup with lemon and orange juices until it dissolves, add gin and shake with ice. Strain into chilled cocktail glass', 'https://drive.google.com/file/d/1HubYa82zuxYN6_W1h3IpiEAB64oNXvK5/view?usp=sharing', 1, 20),
(2, 2, 2, 'Bramble', 'Pour all ingredients into a cocktail shaker except the Cr�me de M�re, shake well with ice, strain into chilled old fashioned glass filled with crushed ice, then pour the blackberry liqueur (Creme de Mure) over the top of the drink, in a circular motion.', 'https://drive.google.com/file/d/1ZEl4ZNAdDir4w1qMkn20QuLi6EZFMWCi/view?usp=sharing', 1, 20),
(4, 1, 1, 'Casino', 'Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass. Garnish with a lemon twist and a maraschino cherry. Serve without a straw.', 'https://drive.google.com/file/d/12yigKJ28B_ryQQ4m9oRIspSLfBYp6azB/view?usp=sharing', 1, 15),
(2, 1, 1, 'Clover Club Cocktail', 'Dry shake ingredients to emulsify, add ice, shake and served straight up.', 'https://drive.google.com/file/d/1FCCxWqKwTzzNkjsXqvz_MRnuT-S70uwj/view?usp=sharing', 1, 15),
(3, 1, 1, 'Corpse Reviver', 'Shake ingredients together in a mixer with ice. Strain into chilled glass. Garnish with orange zest.', 'https://drive.google.com/file/d/16XddQV1_9ReCK9OXe4HM4hRuJff-Uiro/view?usp=sharing', 1, 15),
(3, 1, 1, 'Derby', 'Pour all ingredients into a mixing glass with ice. Stir. Strain into a cocktail glass. Garnish with a sprig of fresh mint in the drink.', 'https://drive.google.com/file/d/1NE_IICWf90ogWNK25D9mDAwp78y334is/view?usp=sharing', 1, 15),
(3, 1, 4, 'French 75', 'Combine gin, syrup, and lemon juice in a cocktail shaker filled with ice. Shake vigorously and strain into a chilled champagne glass. Top up with champagne. Stir gently.', 'https://drive.google.com/file/d/1hkNfEjMvmjjk3hKK8A1pPoj3AhHg1rJC/view?usp=sharing', 1, 15),
(7, 1, 1, 'Gin Fizz', 'Shake all ingredients with ice cubes, except soda water. Pour into glass. Top with soda water.', 'https://drive.google.com/file/d/1NvqPAfGAHCMKqW3pVKQobTFBW0HTSsf_/view?usp=sharing', 1, 10),
(4, 1, 2, 'John Collins', 'Pour all ingredients directly into highball glass filled with ice. Stir gently. Garnish. Add a dash of Angostura bitters.', 'https://drive.google.com/file/d/1jeI8gGLW6IE3Wkqgx0WGDKiLX_4pmonZ/view?usp=sharing', 1, 10),
(7, 1, 1, 'Long Island Iced Tea', '	Add all ingredients into highball glass filled with ice. Stir gently. Optionally garnish with lemon slice.', 'https://drive.google.com/file/d/1x6vpD7021mA6-jy4eQMQ2uD10ZnB5bom/view?usp=sharing', 1, 10),
(6, 1, 1, 'Martini', 'Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into chilled martini cocktail glass.', 'https://drive.google.com/file/d/123j3KaYDclD85bFf4Tz7f69gnnq2fx1j/view?usp=sharing', 1, 15),
(4, 1, 2, 'Suffering Bastard', 'Shake everything but ginger beer with ice, pour unstrained into glass, top with ginger beer.', 'https://drive.google.com/file/d/18j2T7IFR9zESJ-zzAxAhTtUYJZ4ovVmK/view?usp=sharing', 1, 15),
(4, 1, 1, 'Tuxedo', 'Stir all ingredients with ice and strain into a cocktail glass. Garnish with a cherry and a twist of lemon zest.', 'https://drive.google.com/file/d/1FKNgwMXg1_9JKs69e1Pkgh95yqhrieb6/view?usp=sharing', 1, 15),
(3, 1, 1, 'White Lady', 'Add all ingredients into cocktail shaker filled with ice. Shake well and strain into large cocktail glass.', 'https://drive.google.com/file/d/1FY0Ke9S1UgPR8Oa7CeW0J_glkAA5n-9O/view?usp=sharing', 1, 15),
(3, 1, 1, 'Between the Sheets', 'Pour all ingredients into shaker with ice cubes, shake, strain into chilled cocktail glass.', 'https://drive.google.com/file/d/1kBf-uvFzaB-2W4kgS4j40YL9p5dKEtIY/view?usp=sharing', 1, 15),
(2, 1, 1, 'Mai Tai', 'Add all ingredients into a shaker with ice. Shake and pour into a double rocks glass or a highball glass.', 'https://drive.google.com/file/d/1QuHMKc1EXEhjyNgJqs481ZOaxmKzTos-/view?usp=sharing', 1, 15),
(7, 2, 1, 'Mojito', 'Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Light stir to involve all ingredients. Garnish with sprig of mint leaves and lime slice.', 'https://drive.google.com/file/d/1rdGDFuOD8Yi1INLxFm3XIYPaCmxPqMqD/view?usp=sharing', 1, 20),
(2, 2, 1, 'Pina Colada', 'Blend all the ingredients with ice in an electric blender, pour into a large goblet or Hurricane glass and serve.', 'https://drive.google.com/file/d/1Df0Fa3cnpymXihLzFOoVXcO0HYZONdSb/view?usp=sharing', 1, 15),
(7, 2, 1, 'Daiquiri', 'In a cocktail shaker add all ingredients. Stir well to dissolve the sugar. Add ice and shake. Strain into chilled cocktail glass.', 'https://drive.google.com/file/d/1mXZv-tB2fvVn8aoOcKw8FTLcWN8bprXY/view?usp=sharing', 1, 20),
(3, 1, 1, 'Margerita', 'Add all ingredients into a shaker with ice. Shake and strain into a chilled cocktail glass.', 'https://drive.google.com/file/d/1ONwCd3JJCm_VvNcuXqGKMi0xHLZaAY9N/view?usp=sharing', 1, 15),
(2, 2, 2, 'Tequila Sunrise', 'Pour the tequila and orange juice into glass over ice. Add the grenadine, which will sink to the bottom. Stir gently to create the sunrise effect. Garnish and serve.', 'https://drive.google.com/file/d/1cMPPTFkHE5qnOGm4akPeNMCatGqAiUkO/view?usp=sharing', 1, 10),
(5, 1, 2, 'Bloody Mary', 'Stirring gently, pour all ingredients into highball glass. Garnish.', 'https://drive.google.com/file/d/12A43MRFL2OpsQfWrfbuOppdjzFc_xUXD/view?usp=sharing', 1, 10),
(3, 1, 1, 'Cosmopolitan', 'Shake all ingredients in cocktail shaker filled with ice. Strain into a large cocktail glass. Garnish with lime slice.', 'https://drive.google.com/file/d/1ixRod7vSi7wpRPU225mUK9tdu7Ugs7QS/view?usp=sharing', 1, 15),
(7, 1, 1, 'Sex on the Beach', 'Build all ingredients in a highball glass filled with ice. Garnish with orange slice.', 'https://drive.google.com/file/d/1UcS4iySKWatBcwNQ6n8dvxPD2rCIFyL8/view?usp=sharing', 1, 10),
(1, 3, 2, 'Irish Coffee', 'Heat the coffee, whiskey and sugar; do not boil. Pour into glass and top with cream; serve hot.', 'https://drive.google.com/file/d/1Xvt54VBj2hiL4WrbPJES8-jY_sHbSDeG/view?usp=sharing', 1, 20),
(3, 1, 1, 'Wiskey Sour', 'Shake with ice. Strain into chilled glass, garnish and serve.', 'https://drive.google.com/file/d/1L7OGjbdulOa7CBf-cR_6rgMFlhzrvsIG/view?usp=sharing', 1, 15),
(2, 1, 4, 'Bellini', 'Pour peach pur�e into chilled glass, add sparkling wine. Stir gently.', 'https://drive.google.com/file/d/1GHD4obMR-_QdkhC7UipT5FSVrF7HB9La/view?usp=sharing', 1, 5),
(7, 1, 4, 'Mimosa', 'Ensure both ingredients are well chilled, then mix into the glass. Serve cold.', 'https://drive.google.com/file/d/1g3JUxNJ6LhtVZKMVJCEsxxX73w4gWnSC/view?usp=sharing', 1, 5),
(2, 1, 4, 'Kir', 'Add the cr�me de cassis to the bottom of the glass, then top up with wine.', 'https://drive.google.com/file/d/1RbKSZCcSqS5HTEDPxjz1zsn2KXrcLMhK/view?usp=sharing', 1, 5),
(2, 1, 1, 'Grasshopper', 'Pour ingredients into a cocktail shaker with ice. Shake briskly and then strain into a chilled cocktail glass.', 'https://drive.google.com/file/d/1F6bu1IjmFo5Mf8iXXhcpo04-a8af7kgk/view?usp=sharing', 1, 15),
(5, 1, 1, 'Virgin Mary', 'Stirring gently, pour all ingredients into highball glass. Garnish.', 'https://drive.google.com/file/d/1V40pB-4WpqLvZKhDbiysjbUvY5Jqif_8/view?usp=sharing', 0, 15),
(2, 2, 1, 'Virgin Colada', 'Blend all the ingredients with ice in an electric blender, pour into a large goblet or Hurricane glass and serve.', 'https://drive.google.com/file/d/18Q6R2s71smUu0IcTSJi-A342VkUCOSB_/view?usp=sharing', 0, 20),
(3, 1, 2, 'Shirley Temple', 'Stir all the ingredients together and pour the mixture into an ice-filled glass.', 'https://drive.google.com/file/d/18D1ctXj5yUEacuVLInzLlZbYGEPGbdnQ/view?usp=sharing', 0, 10),
(4, 2, 2, 'Lemon, lime and bitters', 'Rim the inside (and optionally outside) of the glass with 4 to 5 dashes of Angostura Bitters then pour lemonade and lime cordial (15�30 mL) into glass. Garnish with Lemon if desired. Has 0.2% alcohol.', 'https://drive.google.com/file/d/1rCykHeWL-4Jt6l0SI8QTeh3vviGkYv93/view?usp=sharing', 0, 15),
(2, 1, 2, 'Roy Rogers', 'Mix the cola and grenadine syrup together. Pour into a glass filled with ice and garnish with a cherry.', 'https://drive.google.com/file/d/1DnoVjJ3CBak0LuY_UW3oRS-NCIG3NJLH/view?usp=sharing', 0, 5);

INSERT INTO UserLogin (userEmail, username, userPassword, salt) VALUES
('test@test.com', 'andrewB', HASHBYTES('SHA2_512', 'AndrewBPassword'), NEWID()),
('test1@test.com', 'andrewC', HASHBYTES('SHA2_512', 'AndrewCPassword'), NEWID()),
('test2@test.com', 'andrewD', HASHBYTES('SHA2_512', 'AndrewDPassword'), NEWID()),
('test3@test.com', 'andrewE', HASHBYTES('SHA2_512', 'AndrewEPassword'), NEWID()),
('test4@test.com', 'andrewF', HASHBYTES('SHA2_512', 'AndrewFPassword'), NEWID());

INSERT INTO IngredientMeasurement (recipeID, ingredientID, measurementID, measurementAmount) VALUES
(1, 1, 9, '35'),
(1, 2, 9, '35'),
(2, 3, 9, '40'),
(2, 4, 9, '120'),
(2, 5, 3, '1'),
(3, 6, 9, '35'),
(3, 7, 9, '20'),
(3, 8, 9, '15'),
(4, 3, 9, '15'),
(4, 14, 9, '45'),
(4, 15, 9, '10'),
(5, 1, 9, '15'),
(5, 16, 9, '10'),
(5, 17, 2, '1'),
(5, 18, 4, '2'),
(6, 1, 9, '50'),
(6, 19, 9, '20'),
(6, 20, 9, '20'),
(7, 6, 9, '30'),
(7, 21, 9, '15'),
(7, 23, 2, '1'),
(7, 24, 2, '1'),
(7, 96, 9, '10'),
(7, 22, 9, '120'),
(7, 10, 9, '15'),
(7, 5, 4, '1'),
(8, 1, 9, '50'),
(8, 97, 9, '20'),
(9, 1, 9, '30'),
(9, 25, 9, '30'),
(9, 26, 9, '30'),
(10, 6, 9, '30'),
(10, 7, 9, '30'),
(10, 27, 9, '30'),
(11, 6, 9, '45'),
(11, 20, 9, '15'),
(11, 28, 9, '15'),
(11, 29, 2, '1'),
(12, 30, 9, '52,5'),
(12, 20, 9, '22,5'),
(12, 8, 9, '22,5'),
(12, 31, 2, '2'),
(13, 6, 9, '50'),
(13, 2, 9, '25'),
(13, 32, 9, '12,5'),
(13, 33, 9, '15'),
(14, 6, 9, '40'),
(14, 28, 9, '10'),
(14, 20, 9, '10'),
(14, 34, 4, '2'),
(15, 6, 9, '45'),
(15, 20, 9, '15'),
(15, 35, 9, '15'),
(15, 36, 9, '5'),
(15, 37, 8, '4'),
(16, 1, 7, '2'),
(16, 38, 6, '1'),
(16, 39, 6, '1'),
(17, 6, 9, '9'),
(17, 40, 4, '2'),
(18, 6, 9, '30'),
(18, 11, 4, '2'),
(18, 20, 9, '15'),
(18, 42, 9, '60'),
(19, 6, 9, '45'),
(19, 20, 9, '30'),
(19, 11, 9, '10'),
(19, 43, 1, '1'),
(20, 6, 9, '45'),
(20, 20, 9, '30'),
(20, 32, 9, '15'),
(20, 47, 9, '40'),
(21, 48, 9, '15'),
(21, 49, 9, '15'),
(21, 50, 9, '15'),
(21, 51, 9, '15'),
(21, 6, 9, '15'),
(21, 20, 9, '30'),
(21, 11, 9, '20'),
(21, 52, 1, 'Top-up'),
(22, 6, 9, '60'),
(22, 36, 9, '10'),
(23, 6, 9, '30'),
(23, 3, 9, '30'),
(23, 10, 9, '15'),
(23, 5, 4, '2'),
(23, 57, 1, 'Top-up'),
(24, 6, 9, '30'),
(24, 36, 9, '30'),
(24, 28, 2, '1/2'),
(24, 98, 2, '1/4'),
(24, 34, 4, '3'),
(25, 6, 9, '40'),
(25, 19, 9, '30'),
(25, 20, 9, '20'),
(26, 50, 9, '30'),
(26, 1, 9, '30'),
(26, 19, 9, '30'),
(26, 20, 9, '20'),
(27, 60, 9, '30'),
(27, 61, 9, '30'),
(27, 62, 9, '15'),
(27, 63, 9, '15'),
(27, 10, 9, '30'),
(27, 11, 9, '7,5'),
(28, 50, 9, '45'),
(28, 10, 9, '20'),
(28, 41, 5, '6'),
(28, 17, 2, '2'),
(28, 43, 1, 'Top-up'),
(29, 50, 7, '5'),
(29, 64, 7, '3'),
(29, 22, 7, '5'),
(30, 50, 9, '60'),
(30, 10, 9, '20'),
(30, 17, 2, '2'),
(31, 48, 9, '50'),
(31, 19, 9, '20'),
(31, 10, 9, '15'),
(32, 48, 9, '45'),
(32, 8, 9, '15'),
(32, 69, 9, '15'),
(33, 49, 9, '45'),
(33, 73, 9, '90'),
(33, 20, 9, '15'),
(33, 74, 4, '2'),
(33, 99, 3, '1'),
(33, 67, 3, '1'),
(33, 75, 3, '1'),
(34, 76, 9, '40'),
(34, 23, 9, '15'),
(34, 10, 9, '15'),
(34, 77, 9, '30'),
(35, 49, 9, '40'),
(35, 81, 9, '20'),
(35, 8, 9, '40'),
(35, 77, 9, '40'),
(36, 83, 9, '40'),
(36, 84, 9, '80'),
(36, 54, 9, '30'),
(36, 85, 2, '1'),
(37, 82, 9, '45'),
(37, 20, 9, '30'),
(37, 11, 9, '15'),
(38, 90, 9, '100'),
(38, 91, 9, '50'),
(39, 42, 9, '75'),
(39, 8, 9, '75'),
(40, 92, 9, '90'),
(40, 93, 9, '10'),
(41, 94, 9, '30'),
(41, 95, 9, '30'),
(41, 54, 9, '30'),
(42, 73, 9, '90'),
(42, 20, 9, '15'),
(42, 74, 4, '2'),
(42, 99, 3, '1'),
(42, 67, 3, '1'),
(42, 75, 3, '1'),
(43, 64, 7, '3'),
(43, 22, 7, '5'),
(44, 96, 9, '15'),
(44, 10, 9, '7,5'),
(44, 4, 9, '150'),
(45, 100, 9, '30'),
(45, 10, 9, '30'),
(45, 5, 4, '4'),
(46, 52, 9, '125'),
(46, 96, 9, '125');
