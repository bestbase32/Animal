class Animal
  attr_accessor :name, :age, :status, :legs 

  def initialize(name,age,status)
    @name = name
    @age = age
    @status = status
    # show
  end
end

class Mammal< Animal
  def initialize(name,age,status,legs = 4)
    @legs = legs
    @name = name
    @age = age
    @status = status
    # super
  end
end

class Fish< Animal
  def initialize(name,age,status,legs = 0)
    @legs = legs
    @name = name
    @age = age
    @status = status
    # super
  end
	def can
    puts "Can swim"
	end
end

class Bird < Animal
  def initialize(name,age,status, legs = 2)
    @legs = legs
    @name = name
    @age = age
    @status = status
    # super
  end
	def ability
    puts "Can fly"
	end
end

class Zoo 
  def initialize(animals)

    @animals = animals

  end 

  def search(kind)
    case
      when kind == 'Mammal'
        a = Mammal.new("Milo","7","alive")
        puts "I'm #{a.name} which have #{a.legs} legs and I'm #{a.age} years old and #{a.status}." unless kind.instance_of? Mammal
      when kind == 'Fish'
        b = Fish.new("Daisy", "2","alive")
        puts "I'm #{b.name} which have #{b.legs} legs and I'm #{b.age} years old and #{b.status}." unless kind.instance_of? Fish
        b.can
      when kind == 'Bird'
        c = Bird.new("Elsa", "5","alive")
        puts "I'm #{c.name} which have #{c.legs} legs and I'm #{c.age} years old and #{c.status}." unless kind.instance_of? Bird
        c.ability
      else
        puts "No data"
    end
   end 
end

    print "Kind of animal: "
    kind = gets.chomp 
  

# zoo = Mammal.new("Milo","7","alive")
animals = [Mammal.new("Milo","7","alive"),Fish.new("Daisy", "2","alive"),Bird.new("Elsa", "5","alive")]

all = Zoo.new(animals)

puts all.search(kind)




