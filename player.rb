class Player
  attr_reader :marker, :name, :playerSelections
  $availableChoices = [1,2,3,4,5,6,7,8,9]

  def initialize(marker, name)
    @marker = marker
    @name = name
    @playerSelections = []
  end

  def mark
    location = 0
    until location > 0 && location <10 ##prints instructions and then waits for proper location argument
      puts "\nPlease choose a number between 1-10"
      self.print_choices
      location = gets.chomp.to_i
      ##makes sure location is in choices
      while(!$availableChoices.include? location)
        puts "This location is already taken, please look at list of choices!"
        self.print_choices
        location = gets.chomp.to_i
      end
    end
    $availableChoices[location-1] = @marker
    @playerSelections.push(location)
    return location 
  end

  def print_choices
    puts "CHOICES:"
    print $availableChoices
    puts
  end

end

