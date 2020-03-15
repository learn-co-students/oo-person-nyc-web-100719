# your code goes here
class Person 

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene


    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end 


    def happiness=(given_happiness)
        @happiness = given_happiness
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
        end
    end 

    def hygiene=(given_hygiene)
        @hygiene = given_hygiene
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
        end 
    end 

    def clean?
        if self.hygiene > 7
            return true 
        else
            return false
        end 
    end 

    def happy?
        if self.happiness > 7
            return true 
        else
            return false
        end 
    end 

    def get_paid(salary)
        self.bank_account += salary
         "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out 
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person_to_start, topic)
        if topic == "politics"
            person_to_start.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person_to_start.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end 

end 