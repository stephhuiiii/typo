Feature: Create or edit categories
  As a blog administrator
  In order to create categories
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create new categories
    When I am on the new category page
    When I fill in "category_name" with "Homework"
    And I fill in "category_keywords" with "hw"
    And I fill in "category_permalink" with "homework"
    And I fill in "category_description" with "homework I have"
    And I press "Save"
    Then I should see "Category was successfully saved."
    Then I should be on the new category page
    
  Scenario: Successfully edit categories
    Given I am on the edit category page
    When I fill in "category_name" with "Homework"
    And I fill in "category_keywords" with "hw"
    And I fill in "category_permalink" with "homework"
    And I fill in "category_description" with "homework I have"
    And I press "Save"
    Then I should see "Category was successfully saved."
    Then I should be on the new category page