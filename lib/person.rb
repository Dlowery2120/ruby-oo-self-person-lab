require 'pry'


class Person
    attr_accessor :bank_account, :happiness
    attr_reader :name, :hygiene, 
    # @@all = [] 
    
    
    def initialize(name)
        @name = name
        @hygiene = 8
        @happiness = 8
        @bank_account = 25
        # @min = min
        # @max = max
        # @@all << self
    end

    def happiness=(points)
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
            
        end
    end

    def clean
       if @hygiene > 7
            "True"
        else
            "False"
        end
    end
    
    def happy
        if @happiness > 7
            "True"
        else
            "False"
        end
    end
# binding.pry
    def get_paid(salary)
        @bank_account = @bank_account + (salary.to_i)
        "all about the benjamins"
     end
     def take_bath
        @hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        @happiness = @happiness + 2
        @hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(person)
        "Hi #(person)!, It's Person. How are you?"
    end
end

mufasa = Person.new("Kanye") 
