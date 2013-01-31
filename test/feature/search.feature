Feature: Search
  In order to learn more
  As an information seeker
  I want to find more information

  Scenario: Find what I'm looking for
    Given I am on the "Search" page
    When I search for "ruby" in the textbox named "txtsearch"
    And I click the "search" button
    Then I should see a link to "http://www.github.com" 
