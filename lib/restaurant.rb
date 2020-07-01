class Restaurant
  attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    (@opening_time.to_i + time).to_s + ':00' #looked this up via the answers accidentally given and then on apidock rubyguides.com because holy smokes I would never have thought to do this, but it makes so much sense.  I'd never seen or heard of this type of thing.  Take the "opening_time" string, turn it into an integer, add the time, convert back into a string, and add the ":00" back as it would have been deleted when "opening_time" was first turned into an integer"
  end

  def add_dish(dish)
    @dishes << dish  #this one we learned earlier today or yesterday (with Kat either way), and I'm glad to see the answers matched me!
  end

  def open_for_lunch?
    @opening_time.to_i <= 12
  end

end
