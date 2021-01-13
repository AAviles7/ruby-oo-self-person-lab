# your code goes here
class Person
    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 25
        @happiness = 8
        @hygiene  = 8
    end

    def bank_account
        @balance
    end
    def bank_account=(balance)
        @balance = balance
    end

    def happiness
        @happiness
    end
    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene
        @hygiene
    end
    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        return @happiness > 7
    end

    def clean?
        return @hygiene > 7
    end

    def get_paid(salary)
        @balance += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics" 
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist" 
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else 
            return 'blah blah blah blah blah'
        end
    end 
    
end