Feature: comments of merged articles

As a contributor to a merged article
So that I can keep track of my contributions
I want to see my comments on merged articles

Background: articles and comments ready to be merged

Given the blog is set up

Given the following articles exist:
| id | title |
| 1 | Article A |
| 2 | Article B |

Given the following users exist:
| id |  login | profile_id | password | email |
| 1 | Steph | 1 | aaaaa | shui@gmail.com |
| 2 | Ben | 2 | bbbbb | bhsieh@gmail.com |

Given the following comments exist:
| title | id | body |
| Comment A1 | 1 | BodyA1 |
| Comment A2 | 1 | BodyA2 |
| Comment B1 | 2 | BodyB1 |


Scenario: comments point to merged article
When the current user is an admin
When I am on the edit page for article with id 1
When I fill in "Merge Article With" with "2"
And I follow "Merge With This Article"
Then I should be on the view page for "Article A + Article B"
Then I should see the body of "Comment A1"
And I should see the body of "Comment A2"
And I should see the body of "Comment B1"