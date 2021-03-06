@javascript
Feature: The participate stream
  Scenario: Sorting
    Given a user with username "bob"
    When I sign in as "bob@bob.bob"

    And I post "A- I like turtles"
    And I post "B- barack obama is your new bicycle"
    And I post "C- barack obama is a square"

    When I go to the participate page
    Then "C- barack obama is a square" should be post 1
    And "B- barack obama is your new bicycle" should be post 2
    And "A- I like turtles" should be post 3

    When I pin the post "A- I like turtles"
    And I wait for 1 second
    And I comment "Sassy sawfish" on "C- barack obama is a square"
    And I wait for 1 second
    And I pin the post "B- barack obama is your new bicycle"
    And I wait for 1 second

    When I go to the participate page
    Then "B- barack obama is your new bicycle" should be post 1
    And "C- barack obama is a square" should be post 2
    And "A- I like turtles" should be post 3
