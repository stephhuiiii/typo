Feature: content of merged articles

As a shared blogger
So that I can merge articles with similar topics/views
I want to merge the articles in question

Background: articles ready to be merged

Given the blog is set up

Given the following articles exist:
| id | title | author | body | 
| 1 | Article A | AuthorA | this is the first article |
| 2 | Article B | AuthorB | this is the second article |

Given the following users exist:
| id |  login | profile_id | password | email |
| 1 | Steph | 1 | aaaaa | shui@gmail.com |
| 2 | Ben | 2 | bbbbb | bhsieh@gmail.com |

Scenario: merge 2 articles together and only 1 of the authors are in the merged article
And I am on the edit page for article with id 1
When the current user is an admin
When I fill in "merge_with" with "2"    
When I press "merge"
Then I should be on the edit page for article with id 1
Then the author field should contain "AuthorA"
## Not sure how we plan to create a new title for merged articles

Scenario: the text of the articles are in the merged article
When I am on the edit page for article with id 1
Then I should see the body of "Article A"
And I should see the body of "Article B"