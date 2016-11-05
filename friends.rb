require('pry-byebug')


# 1. For a given person, return their favourite tv show
def  tv_show(person)
  return person[:favourites][:tv_show]
end



# 2. For a given person, check if they like a particular food
def likes_food(person, food)
  for individual_food in person[:favourites][:things_to_eat]
    if food == individual_food
      return true
    end
  end
end
# shorter version
# def  likes_food(person, food)
#   return person[:favourites][:things_to_eat].include?(food)
# end

#.include? is similar as for loop


# 3. Allow a new friend to be added to a given person
def add_friend(person)
  person[:friends].push("Patrick")
  end
#def add_friend(name, person)
# person[:friends] << name
# end


# 4. Allow a friend to be removed from a given person
def delete_friend(person)
  person[:friends].pop
end
#----------other option------------------------
#def remove_friend(name, person)
#person[:friends].delete(name)
#end

#------------other option----------------------
# def remove_friend(name, person)
#   result = nil

#   for friend in person[:friends]
#     result = friend if friend == name
#   end

#   if result != nil
#     person[:friends].delete(result)
#   end

# end

#--------------------------------------

# 5. Find the total of everyone's money
def total_funds(people)
total = 0
for person in people
  total += person[:monies]
end
  return total
end



# 6. For two given people, allow the first person to loan a given value of money to the other
def lend_money(giver, receiver, value)
  giver[:monies] -= value
  reciever[:monies] += value
end
# need to review this 

# 7. Find the set of everyone's favourite food joined together
def all_foods(people)
foods = []
for person in people
  foods.concat(person[:favourites][:things_to_eat])
end
return foods
end
#concat stand for concatenation which means joining two strings together. Think this can only be used in ruby???


# 8. Find people with no friends
def no_friends(people)
  result = []
  for person in people 
    result << person if person[:friends].empty?
  end
  return result
end

# INSANE good just to look back on?

# def same_tv_show( friends )
#   tv_shows = {}
#   result = {}

#   for friend in friends
#     show = friend[:favourites][:tv_show]

#     if tv_shows[show]
#       tv_shows[show].push(friend[:name])
#     else
#       tv_shows[show] = [friend[:name]]
#     end
#   end

#   for i in tv_shows.keys
#     if tv_shows[i].size > 1
#       result[i] = tv_shows[i].reverse
#     end
#   end

#   return result
# end

# Find the people who have the same favourite tv show