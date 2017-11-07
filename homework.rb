class Student

  def initialize(name, cohort)
  @name = name
  @cohort = cohort
end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def student_talk
    return "I can talk!"
  end

  def student_language(language)
    return "I love #{language}"
  end
end

class Team

  attr_accessor :team_name, :players, :coach_name

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = 0
  end

  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach_name
  # end
  #
  # def set_coach(new_name)
  #   @coach_name = new_name
  # end

  def new_player(addition)
    @players << addition
  end

  def player_check(player)
    for person in @players
      if @players.include?(player)
        return true
      end
      return false
    end
  end

  def win_lose(result)
    if result == "Win"
      @points += 1
    else
      return @points
    end
  end

end

class Library

attr_accessor :books

  def initialize(books)
    @books = books
  end

  def details
    return @books
  end

  def book_info(new_book)
    for book in @books
      if book[:title] == new_book
        return book
      end
    end
  end


  #   def call_rental_details(book_title)
  #     for item in @books
  #       if item[:title] == book_title
  #         return item[:rental_details]
  #       end
  #     end
  #   end
  # end


end
