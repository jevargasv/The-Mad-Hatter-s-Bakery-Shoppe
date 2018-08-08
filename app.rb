require 'sinatra'
require 'sendgrid-ruby'
include SendGrid
require_relative 'menu'
# require 'sinatra-reloader'
# using SendGrid's Ruby Library
# https://github.com/sendgrid/sendgrid-ruby

# Also can be redirected (linked) to "home" and the logo of the website
get '/' do
    erb :index    
end

get '/menu' do
    erb :menu
end

get '/about' do
    erb :about
end

get '/cookies' do
    @cookie_1 = Cookie.new("French Macarons", "/images/macarons.jpeg", "$20.00", "Oh by jove! We got the French here with these tasty morsels that comes with a dozen box with so many exquisite flavours to choose from absinthe to zinnia!")
    @cookie_2 = Cookie.new("Wonderlandian Sugar Cookies", "/images/sugarcookies.jpg", "$20.00", "Oh, giddy me! Enjoy our dozen of sugar cookies with our signature motifs, characters and values made with royal icing and fondant!")
    @cookie_3 = Cookie.new("The Giant Chocolate Chip Cookie", "/images/chocolatechipcookie.jpg", "$16.00", "Dear me, look how huge this cookie this! Our giant chocolate chip cookie weighs 2 lbs with a lot of freshly baked goodness and soft chewiness!")
    @cookie_4 = Cookie.new("The Giant Black and White Cookie", "/images/giantbwcookie.jpg", "$16.00", "Oh crikey, not another one! Our giant black and white cookie weighs 2 lbs with a lot of... oh, you get the drill!")
    @cookie_5 = Cookie.new("The Giant Gingerbread Man Cookie", "/images/giantgingerbreadcookies.jpg", "$16.00", "Let this be the final one, please! Our giant gingerbread man cookie weigh 2 lbs with a lot of... ooh, next item, please!")
    @cookie_6 = Cookie.new("The Queen of Hearts's Jammie Dodgers", "/images/jammiedodger.jpg", "$20.00", "Yes, her Majesty's favorite biscuits, her Jammie Dodgers filled with strawberry marmalade with a heart in the middle of the shortbread part!")
    @cookies = [@cookie_1, @cookie_2, @cookie_3, @cookie_4, @cookie_5, @cookie_6]
    erb :cookies
end

get '/cakes' do
    @cake_1 = Cake.new("Tiramisu Tea Cup Cake", "/images/cakeone.jpeg", "$8.00", "Splendid, Tea Time! Try this delicious cake with layers of tiramisu within a white and dark chocolate cup and cocoa powder dust on the top!")
    @cake_2 = Cake.new("The White Rabbit's Tree Trunk Cake", "/images/cakethree.jpeg", "$10.00", "Oh, dear! The White Rabbit is stuck inside the tree trunk! Help getting him out by eating this creamy tree trunk cake with luscious chocolate ganache on the outside and inside and chocolate sponge cake with fondant figures, including the White Rabbit!")
    @cake_3 = Cake.new("The Unbirthday Cake", "/images/unbirthdaycake.jpg", "$16.00", "Have a Merry, Very Unbirthday to you with this special Unbirthday Cake which consists of colourful fondant casing with figures on the outside and lemon buttercream, raspberry marmalade and white sponge cake on the inside!")
    @cake_4 = Cake.new("The Queen of Hearts's Cake", "/images/queenofhearts.jpg", "$10.00", "OFF WITH THEIR HEADS if you try to sabotage the Queen's cake! Try her Majesty's royally delectable cake with fondant casing with her majesty's signature colors, fondant figures and candy rhinestones on the outside and her Majesty's secret flavors and white sponge cake on the inside!")
    @cake_5 = Cake.new("Wonderlandian Petit Fours", "/images/petitfours.jpeg", "$20.00", "Delectable! Try our Wonderlandian specialty with our dozen of petit fours encased with white chocolate, fondant figures, candied fruits and chocolate on the outside and raspberry marmalade with white sponge cake on the inside!")
    @cake_6 = Cake.new("The Mad Hatter's Hat Cake", "/images/caketwo.jpeg", "$10.00", "Go completely bonkers and MAD over this cake which has layers of banana toffee and chocolate ganache with sponge cake, encased with dark chocolate and white fondant rabbit ears and a clock made of white chocolate!")
    @cakes = [@cake_1, @cake_2, @cake_3, @cake_4, @cake_5, @cake_6]
    erb :cakes
end

get '/cupcakes' do
    @cupcake_1 = Cupcake.new("The Queen of Hearts's Painted Rose Cupcakes", "/images/paintedrosecupcakes.jpg", "$20.00", "WHO PAINTED MY ROSES RED?!!! Oh, dear!!! Try these lovely dozen of cupcakes with rose-flavoured buttercream frosting and cherry-flavoured food colouring with white sponge cake before she cuts our heads off!")
    @cupcake_2 = Cupcake.new("Turkish Delight Cupcakes", "/images/turkishdelightcupcakes.jpg", "$20.00", "Very exotic, those Turks! These lovely dozen of cupcakes are made with orange-flavoured buttercream frosting topped with rose turkish delight and chopped pistachios with white sponge cake!")
    @cupcake_3 = Cupcake.new("Carrot Cake Cupcakes", "/images/carrotcakecupcakes.jpg", "$20.00", "Oh my! I'm late... I'm late... The White Rabbit speaking. Have to run to try my favorite dozen of cupcakes of all time, my carrot cake cupcakes with whole wheat sponge cake and carrot bits topped with cream cheese frosting and more carrot bits!")
    @cupcake_4 = Cupcake.new("The Mad Hatter's Hat Cupcakes", "/images/madhattercupcakes.jpg", "$20.00", "HA, HA, HA, HA! Also, go completely bonkers and MAD over these dozen of cupcakes which has a fondant figure of a hat, more fondant figures and a secret filling on the inside of the white sponge cake!")
    @cupcake_5 = Cupcake.new("Banana Toffee Cupcakes", "/images/bananatoffeecupcakes.jpg", "$20.00", "Oh, delightful! Try these dozen of banana toffee cupcakes topped with English toffee, toffee-flavoured buttercream frosting and banana slices with white sponge cake!")
    @cupcake_6 = Cupcake.new("Custom Eat Me Cupcakes", "/images/cupcake.jpeg", "$20.00", "Oh, brilliant, ole chap! Now you can customize your own dozen of cupcakes your favorite flavour and style which comes with the sign and we will make for you, the Wonderlandian way!")
    @cupcakes = [@cupcake_1, @cupcake_2, @cupcake_3, @cupcake_4, @cupcake_5, @cupcake_6]
    erb :cupcakes
end

get '/muffins' do
    @muffin_1 = Muffin.new("English Scones", "/images/scones.jpeg", "$8.00", "Oh goody! Freshly baked, fluffy and buttery three scones that are served with homemade marmalade of your choice of flavour from apple to zhe, with clotted cream!")
    @muffin_2 = Muffin.new("English Crumpets", "/images/crumpets.jpeg", "$8.00", "Oh, just in the nick of time for spongy and buttery three crumpets, freshly baked and served with homemade marmalade of your choice of flavour from apple to zhe, with more butter!")
    @muffin_3 = Muffin.new("Red Currant Muffins", "/images/redcurrant.jpeg", "$8.00", "Very English, indeed! these are three freshly baked muffins with red, plump, juicy red currants, imported from England!")
    @muffin_4 = Muffin.new("Black Currant Muffins", "/images/blackcurrantmuffins.jpg", "$8.00", "Also very English, indeed! these are three freshly baked muffins with black, plump, juicy black currants, also imported from England!")
    @muffin_5 = Muffin.new("Apple Sultana Muffins", "/images/applesultanamuffins.jpg", "$8.00", "Interesting combination, sire! These are three freshly baked muffins made with golden, sweet apples and huge, plump sultana raisins!")
    @muffin_6 = Muffin.new("Sticky Toffee Muffins", "/images/stickytoffeemuffins.jpg", "$8.00", "Hurrah! More toffee! Enjoy these three freshly baked muffins made filled English toffee and topped with more sticky English toffee!")
    @muffins = [@muffin_1, @muffin_2, @muffin_3, @muffin_4, @muffin_5, @muffin_6]
    erb :muffins
end

get '/sandwiches' do
    @sandwich_1 = Sandwich.new("Cucumber Sandwich", "/images/cucumbersandwich.jpg", "$6.00", "Is it Tea Time, yet? Our cucumber sandwich is made with fresh, crisp cucumber slices and loads of tarragon-infused butter with two slices of white bread!")
    @sandwich_2 = Sandwich.new("Tomato Sandwich", "/images/tomatosandwich.jpg", "$6.00", "Another tea sandwich, mate! Our tomato sandwich is made with fresh, drained tomato slices and loads of garlic aioli with two slices of white bread!")
    @sandwich_3 = Sandwich.new("Marmite Sandwich", "/images/marmiteandbuttersandwich.jpg", "$6.00", "Errrrr... Not my favourite sandwich. Quite salty. Our marmite sandwich is made of thin layers of marmite and loads of honey-infused butter with two slices of white bread!")
    @sandwich_4 = Sandwich.new("Smoked Salmon and Dill Sandwich", "/images/smokedsalmonanddillsandwich.jpg", "$6.00", "Errrrr... Also not my favourite sandwich. Fishy taste. Our smoked salmon and dill sandwich is made with fresh slices of smoked salmon, chopped dill and loads of cream cheese with two slices of white bread!")
    @sandwich_5 = Sandwich.new("Onion and Cheese Sandwich", "/images/onioncheesesandwich.jpg", "$6.00", "Yes, indeed, sire! My favourite! Our onion and cheese sandwich is made with freshly chopped green onions and loads of cream chesse with two slices of white bread!")
    @sandwich_6 = Sandwich.new("Ham and Cheese Sandwich", "/images/hamandcheesesandwich.jpg", "$6.00", "Delicious sandwich! Our ham and cheese sandwich is made with sliced English ham, sliced Cheddar cheese and loads of citrus-flavoured mayonnaise with two slices of white bread!")
    @sandwiches = [@sandwich_1, @sandwich_2, @sandwich_3, @sandwich_4, @sandwich_5, @sandwich_6]
    erb :sandwiches
end

get '/doughnuts' do
    @doughnut_1 = Doughnut.new("French Crullers", "/images/frenchcruller.jpg", "$20.00", "Oh those French are at it again! Try our freshly baked and crisp dozen of French Crullers, glazed in sugar and sometimes, partially dipped in chocolate!")
    @doughnut_2 = Doughnut.new("Jelly Doughnuts", "/images/jellydoughnuts.jpg", "$20.00", "Jelly, jelly, jelly about jelly doughnuts! Try our freshly baked and soft dozen of jelly doughnuts, filled with mystery jams and topped with plain, ole sugar!")
    @doughnut_3 = Doughnut.new("English Creme Doughnuts", "/images/englishcremedonuts.jpg", "$20.00", "The English are here again with these tasty treats! Try our freshly baked and soft dozen of English Creme doughnuts, filled with our famous English Creme and topped with chocolate frosting!")
    @doughnut_4 = Doughnut.new("Sugar-Glazed Doughnuts", "/images/sugarglazeddoughnuts.png", "$20.00", "Beautifully covered sugary goodness! Try our freshly baked and shiny dozen of sugar-glazed doughnuts, covered in glazed confectionery sugar!")
    @doughnut_5 = Doughnut.new("English Toffee Doughnuts", "/images/englishtoffeedonuts.jpg", "$20.00", "Toffee, my best friend! Try our freshly baked and sticky dozen of English toffee doughnuts, filled with toffee, topped with toffee bits and glazed with more toffee!")
    @doughnut_6 = Doughnut.new("Wonderlandian Doughnuts", "/images/donuts.jpg", "$20.00", "Wonderland, forever! Try our freshly baked and assorted dozen of Wonderlandian doughnuts with all surprises that fill your heart's content!")
    @doughnuts = [@doughnut_1, @doughnut_2, @doughnut_3, @doughnut_4, @doughnut_5, @doughnut_6]
    erb :doughnuts
end

get '/teas' do
    @tea_1 = Tea.new("Earl Grey Tea", "/images/earlgrey.jpeg", "$6.00", "Here, here! Come and enjoy our freshly brewed and steaming hot Earl Grey Tea, with an essence of bergamot and citrus, especially imported from Wonderland!")
    @tea_2 = Tea.new("Jasmine Tea", "/images/jasminetea.jpg", "$6.00", "Excellent choice for the non-Mad people. Try our lovely and fragrant jasmine tea which soothes and relaxes the mind! Not for Wonderlandians, though!")
    @tea_3 = Tea.new("White Tea", "/images/whitetea.jpg", "$6.00", "Pretty bland for a tea. Try our lovely yet simple taste of white tea which is also for the non-Mad people!")
    @tea_4 = Tea.new("Oolong Tea", "/images/oolongtea.jpg", "$6.00", "Not pretty bad for such a tea as this one! Try our exotic and delicious oolong tea which is very pungent and fragrant, that is!")
    @tea_5 = Tea.new("Magic Blue Pea Flower Tea", "/images/bluepeaflowertea.jpg", "$6.00", "Oooh! Magic tea that changes colour?! Try this whimsical magical tea which comes with a secret ingredient that changes its colour!")
    @tea_6 = Tea.new("The Mad Hatter's Special Brew", "/images/tea.jpeg", "$8.00", "A good ole cup of tea, dear? This is the Mad Hatter's Special Brew which is the typical black tea but with a very secret ingredient!")
    @teas = [@tea_1, @tea_2, @tea_3, @tea_4, @tea_5, @tea_6]
    erb :teas
end

get '/coffees' do
    @coffee_1 = Coffee.new("Black Coffee", "/images/coffee.jpg", "$6.00", "Not very English but try our premium roasted coffee from Arabica beans with no sugar or milk!")
    @coffee_2 = Coffee.new("Cappucino", "/images/cappucino.jpg", "6.00", "Great, the Italians are now at it! Try our delicious cup of cappucino, espresso-pressed coffee with frothy cream and topped with cocoa powder!")
    @coffee_3 = Coffee.new("Espresso Coffee", "/images/espresso.jpg", "$6.00", "The Italians again. Once again, try our espresso-pressed, premium roasted from Arabica beans coffee with no sugar or milk!")
    @coffee_4 = Coffee.new("Cafe au Lait", "/images/cafeaulait.jpg", "$6.00", "The French, again? Grrrrr... Try our premium roasted coffee from Arabica beans with sugar and frothy milk!")
    @coffee_5 = Coffee.new("Mocha", "/images/mocha.jpg", "$6.00", "Grrrrrr... Anyways, try our espresso-pressed, premium roasted from Arabica beans coffee with frothy cream and topped with whipped cream and cocoa powder!")
    @coffee_6 = Coffee.new("Wonderlandian Latte", "/images/latte.jpg", "$6.00", "Finally, another Wonderlandian favourite! Enjoy our customized latte art of our Wonderlandian themes, featuring the wonderful characters of Wonderland! Latte is made with espresso-pressed coffee and frothy cream!")
    @coffees = [@coffee_1, @coffee_2, @coffee_3, @coffee_4, @coffee_5, @coffee_6]
    erb :coffees
end

get '/juices' do
    @juice_1 = Juice.new("Oranlemonade", "/images/oranlemonade.jpg", "$6.00", "JUICE!!!!!!! Try our Oranlemonade which consists of freshly squeezed orange juice and lemon juice, mixed together into this concoction!")
    @juice_2 = Juice.new("Strawberry Juice", "/images/strawberryjuice.jpg", "$6.00", "Lovely, her Majesty's, The Queen of Hearts's favourite juice. Try our freshly squeezed strawberry juice, with your choice of adding pulp or not!")
    @juice_3 = Juice.new("Carrot Juice", "/images/carrotjuice.jpeg", "$6.00", "Lovely, the White Rabbit's favourite juice. Try our freshly squeezed carrot juice, with your choice of adding pulp or not!")
    @juice_4 = Juice.new("Kiwi Juice", "/images/kiwijuice.jpg", "$6.00", "Oh, bugger! I am allergic to kiwis!!!!! Try our freshly squeezed kiwi juice with your choice of adding pulp or not!")
    @juice_5 = Juice.new("Apple Juice", "/images/applejuice.jpg", "$6.00", "Yummy! My favourite! Apples, of course! Try our freshly squeezed apple juice, no pulp on this one!")
    @juice_6 = Juice.new("Passion Fruit Juice", "/images/passionfruitjuice.jpg", "$6.00", "An exotic flavour of the non-Mad people! Try our freshly squeezed passion fruit juice, with your choice of adding pulp or not!")
    @juices = [@juice_1, @juice_2, @juice_3, @juice_4, @juice_5, @juice_6]
    erb :juices
end

get '/alcohols' do
    @alcohol_1 = Alcohol.new("Hot Toddy", "/images/hottoddy.jpg", "$12.00", "Jolly good! Some good ole Hot Toddy as a soothing remedy for everything, consists of Captain Morgan's sugar cane rum, cinnamon, honey, citrus juice, hot water and secret herbs and spices, as usual, served hot!")
    @alcohol_2 = Alcohol.new("Drink Me Tonic", "/images/drinkme.jpeg", "$12.00", "Oh my, what's happening to me?!!! Drink me with this special tonic made of part Bombay Sapphire Gin, part tonic water and another secret ingredient that causing the effect!")
    @alcohol_3 = Alcohol.new("The Queen of Hearts's Judgement", "/images/queencocktail.jpg", "$12.00", "As always, her Majesty, the Queen of Hearts's drink. Try her drink, made with part strawberry and raspberry liqueur, part Hendrick's gin and part seltzer water, decorated with three cranberries on a stick!")
    @alcohol_4 = Alcohol.new("Shots of the Cheshire Cat", "/images/cheshireshots.jpg", "$18.00", "What foolishness are you up to this time, silly cat?! Try the Cheshire Cat's three shots in which I do not know what he put! Probably trippy trips!")
    @alcohol_5 = Alcohol.new("The Mad Hatter's Madness", "/images/madhattercocktail.jpg", "$12.00", "Ooooooh, I rather not overdo it! HA HA! Try my drink, made with my Special Brewed Tea, Captain Morgan's sugar cane rum, orange and lemon liqueur and topped with mint leaves and citrus zest!")
    @alcohol_6 = Alcohol.new("The White Rabbit's Escape", "/images/whiterabbitcocktail.jpg", "$12.00", "Et tu, the White Rabbit?! What are you running for? Try the White Rabbit's drink, made with vanilla and white chocolate liqueur, Bacardi's coconut rum and topped with mint leaves, gold leaves and a large scoop of vanilla ice cream!")
    @alcohols = [@alcohol_1, @alcohol_2, @alcohol_3, @alcohol_4, @alcohol_5, @alcohol_6]
    erb :alcohols
end

post '/' do
    from = Email.new(email: 'jevargasv1990@gmail.com')
    to = Email.new(email: 'jevargasv1990@gmail.com')
    subject = "The Mad Hatter's Bakery Shoppe Catalog"
    content = Content.new(type: 'text/html', value: "
    <h1>Thank you for subscribing to our catalog at the Mad Hatter's Bakery Shoppe!<h1>
    This is our catalog of our delectable items:
    <ul>
      <li> Cookies
       <ul>
       <li>#{@cookies}</li>
       </ul>
       </li>
      <li> Cakes
       <ul>
       <li>#{@cakes}</li>
       </ul>
       </li>
       <li> Cupcakes
       <ul>
       <li>#{@cupcakes}</li>
       </ul>
       </li>
       <li> Muffins
       <ul>
       <li>#{@muffins}</li>
       </ul>
       </li>
       <li> Sandwiches
       <ul>
       <li>#{@sandwiches}</li>
       </ul>
       </li>
       <li> Doughnuts
       <ul>
       <li>#{@doughnuts}</li>
       </ul>
       </li>
       <li> Teas
       <ul>
       <li>#{@teas}</li>
       </ul>
       </li>
       <li> Coffees
       <ul>
       <li>#{@coffees}</li>
       </ul>
       </li>
       <li> Juices
       <ul>
       <li>#{@juices}</li>
       </ul>
       </li>
       <li> Alcohols
       <ul>
       <li>#{@alcohols}</li>
       </ul>
       </li>
    </ul>
    Please inquire us for further information! As always, thank you for choosing us!
    ")

    mail = Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
    erb :index
end