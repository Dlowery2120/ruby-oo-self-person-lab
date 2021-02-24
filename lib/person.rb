require 'pry'


class Person
    #  @@all = [] 
    # attr_accessor :name, :hygiene, :happiness, :bank_account, :salary
    
    def initialize(name, hygiene = 8, happiness = 8, bank_account = 25)
        @name = name
        @hygiene = hygiene
        @happiness = happiness
        @bank_account = bank_account 
        # @min = min
        # @max = max
        # @@all << self
    end
    
    def clean
        if @hygiene >= 7
            "True"
        else
            "False"
        end
    end
    def happy
        if @happiness >= 7
            "True"
        else
            "False"
        end
    end

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
 binding.pry