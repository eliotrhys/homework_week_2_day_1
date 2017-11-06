require('minitest/autorun')
require('minitest/rg')
require_relative('../homework.rb')

class TestStudent < MiniTest::Test

  def test_get_name
    student = Student.new("Douglas", 17)
    assert_equal("Douglas", student.get_name)
  end

  def test_get_cohort
    student = Student.new("Douglas", 17)
    assert_equal(17, student.get_cohort)
  end

  def test_set_name
    student = Student.new("Douglas", 17)
    student.set_name("Morgan")
    assert_equal("Morgan", student.get_name)
  end

  def test_set_cohort
    student = Student.new("Douglas", 17)
    student.set_cohort(15)
    assert_equal(15, student.get_cohort)
  end

  def test_student_talk
    student = Student.new("Douglas", 17)
    student.student_talk
    assert_equal("I can talk!", student.student_talk)
  end

  def test_student_language
    student = Student.new("Douglas", 17)
    new_student_language = student.student_language("Ruby")
    assert_equal("I love Ruby", new_student_language)
  end
end

class TestTeam < MiniTest::Test

  def test_get_team_name
    sports_team = Team.new("Cougars", ["Mike Smith", "Donkey Kong", "Sebulba"], "Coach Bob")
    # assert_equal("Cougars", sports_team.get_team_name)
    assert_equal("Cougars", sports_team.team_name)
  end

  def test_get_players
    sports_team = Team.new("Cougars", ["Mike Smith", "Donkey Kong", "Sebulba"], "Coach Bob")
    # assert_equal(["Mike Smith", "Donkey Kong", "Sebulba"], sports_team.get_players)
    assert_equal(["Mike Smith", "Donkey Kong", "Sebulba"], sports_team.players)
  end

  def test_get_coach
    sports_team = Team.new("Cougars", ["Mike Smith", "Donkey Kong", "Sebulba"], "Coach Bob")
    # assert_equal("Coach Bob", sports_team.get_coach)
    assert_equal("Coach Bob", sports_team.coach_name)
  end

  def test_set_coach
    sports_team = Team.new("Cougars", ["Mike Smith", "Donkey Kong", "Sebulba"], "Coach Bob")
    # new_name = sports_team.set_coach("Coach Michael")
    sports_team.coach_name = "Coach Michael"
    assert_equal(sports_team.coach_name, "Coach Michael")
  end

  def test_new_player
    sports_team = Team.new("Cougars", ["Mike Smith", "Donkey Kong", "Sebulba"], "Coach Bob")
    add_new_player = sports_team.new_player("Shelley")
    assert_equal(add_new_player, ["Mike Smith", "Donkey Kong", "Sebulba", "Shelley"])
  end

  # def test_player_check
  #   sports_team = Team.new("Cougars", ["Mike Smith", "Donkey Kong", "Sebulba"], "Coach Bob")
  #   sports_team2 = Team.new("Cougars", ["Mike Smith", "Donkey Kong", "Sebulba"], "Coach Bob")
  #   check1 = sports_team.player_check("Mike Smith")
  #   check2 = sports_team2.player_check("Buster McHedgerow")
  #   assert_equal(check1, true)
  #   assert_equal(check2, false)
  # end

  def test_win_lose
    sports_team = Team.new("Cougars", ["Mike Smith", "Donkey Kong", "Sebulba"], "Coach Bob")
    sports_team2 = Team.new("Cougars", ["Mike Smith", "Donkey Kong", "Sebulba"], "Coach Bob")
    win_scenario = sports_team.win_lose("Win")
    lose_scenario = sports_team2.win_lose("Lose")
    assert_equal(win_scenario, 1)
    assert_equal(lose_scenario, 0)
  end


end

class TestLibrary < MiniTest::Test

  def setup

    @books = [
          {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"}
          },
          {
          title: "the_sun_also_rises",
          rental_details: {
            student_name: "Mark",
            date: "15/11/15"}
          },
          {
          title: "the_accidental_billionaires",
          rental_details: {
            student_name: "Dumbledore",
            date: "09/01/15"}
          }
        ]


        @library = Library.new(@books)

	end

  #
  # def test_details
  #   result = @library.details
  #   assert_equal(result, @books)
  # end

  # def test_book_info
  #  result = @library.book_info("the_sun_also_rises")
  #  assert_equal(result, @books[2])
  # end

 # def test_call_rental_details
 #   result = @library.call_rental_details("lord_of_the_rings")
 #   assert_equal(result, @books[1][:rental_details])
 # end

end
