class Barracks

  attr_accessor :gold, :food
  def initialize
    @gold = 1000
    @food = 80
  end


  def can_train_footman?
    # return false if food < 2 
    # (food > 2 && gold > 135)? true : false
    food > 2 && gold > 135
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new 
    else
      nil
    end
  end

  def can_train_peasant?
    food > 4 && gold > 89
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

end

# gold = self.gold = barracks.gold
