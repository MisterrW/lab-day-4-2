

# 1. For a given person, return their favourite tv show

def fav_tv_show(person)

  return person[:favourites][:tv_show]

end

# 2. For a given person, check if they like a particular food

def likes_food?(person, food)

  return person[:favourites][:things_to_eat].include?(food)

end


# 3. Allow a new friend to be added to a given person

def add_friend(person, new_friend)
  person[:friends] << new_friend
end


# 4. Allow a friend to be removed from a given person

def remove_friend(person, ex_friend)

  person[:friends].delete(ex_friend)
end

# 5. Find the total of everyone's money

def all_the_money(people)
  total_money = 0
  # people.each do |person|
  #   total_money += person[:monies]
  # end

  for person in people
    total_money += person[:monies]
  end
  
  return total_money
end



# 6. For two given people, allow the first person to loan a given value of money to the other
# 7. Find the set of everyone's favourite food joined together
# 8. Find people with no friends

# INSANE
# Find the people who have the same favourite tv show