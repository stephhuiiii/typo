Feature: comments of merged articles

As a contributor to a merged article
So that I can keep track of my contributions
I want to see my comments on merged articles

Background: articles and comments ready to be merged

Given the blog is set up

Given the following articles exist:
| id | title | author | body | 
| 1 | Article A | AuthorA | this is the first article |
| 2 | Article B | AuthorB | this is the second article |

Given the following users exist:
| login | profile_id | password | email |
| Steph | 1 | aaaaa | shui@gmail.com |
| Ben | 2 | bbbbb | bhsieh@gmail.com |

Given the following comments exist:
| title | article_id | body | author |
| Comment A1 | 3 | BodyA1 | Brett |
| Comment A2 | 3 | BodyA2 | Ben |
| Comment B1 | 4 | BodyB1 | Brady |


Scenario: comments point to merged article
When the current user is an admin
And I am on the edit page for article with id 1
When I fill in "merge_with" with "2"
When I press "merge"
Then I should be on the edit page for article with id 1
Then I should see the body of "Comment A1"
And I should see the body of "Comment A2"
And I should see the body of "Comment B1"