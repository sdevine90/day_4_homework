require( 'minitest/autorun' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

#because its a hash you will have a key value pairing within it. example name: = key and "Rick" = value. friends = key, ["Jay","Keith","Marc", "Val"] = value
    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end


#1
  def test_tv_show
    result = tv_show(@person4)
    assert_equal("Pokemon", result)
  end
  
#2
  def test_likes_to_eat
    assert_equal(true, likes_to_eat(@person3,"stew"))
    assert_equal(false, likes_to_eat(@person2,"stew"))
  end

#2
def test_eats_food
  result = likes_food(@person4, "spaghetti")
  assert_equal(true, result)
end


#3
def test_add_friend
  add_friend(@person5)
  assert_equal("Patrick", @person5[:friends].first)
end


#4
def test_delete_friend
  delete_friend(@person4)
  assert_equal(2, @person4[:friends].count)
end


#5
def test_total_money
  result = total_money(@people)
  assert_equal(143, result)
end
end
#or could be written like this
#def test_total_funds
#assert_equal(143, total_funds(@people))
#end

#6 
def test_lend_money
  lend_money(@person5, @person1, 10)
  assert_equal(90, @person5[:monies])
  assert_equal(11, @person1[:monies])
end

#7
def test_all_foods
foods = ["charcuterie", "soup", "bread", "ratatouille", "stew", "spaghetti", "spinach"]
assert_equal(foods, all_foods(@people) )
end

#8 
def test_no_friends
  assert_equal([@person5],no_friends(@people))
end

#INSANE good to look back on?
def test_same_tv_show
  result = same_tv_show(@people)
  assert_equal({"Pokemon" => ["Keith", "Val"]}, result)
end
#need to look over this one don't quite understand





















