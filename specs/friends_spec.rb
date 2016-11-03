require( 'minitest/autorun' )
require_relative( '../friends' )
require('pry-byebug')
require( 'minitest/rg')

# class Hash
#   def expunge_jay
#     if self.include?("Jay")
#       self.delete("Jay")
#     end
#   end
# end

class TestFriends < MiniTest::Test

  def setup

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

  def test_name()
    assert_equal("Marc", @person5[:name])
  end

  def test_tv_show()

      assert_equal("Scrubs", fav_tv_show(@person5))
  end

  def test_foods()
    assert_equal(true, likes_food?(@person5, "spinach"))

  end

  def test_add_friends()
    new_friend = "Trevor"
    add_friend(@person3, new_friend)
    assert_equal(true, @person3[:friends].include?(new_friend))
  end

  def test_remove_friends()
    ex_friend = "Jay"
    remove_friend(@person4, ex_friend)
    assert_equal(false, @person4[:friends].include?("Jay"))
  end

  def test_all_the_money()
    assert_equal(143, all_the_money(@people))
  end



end
