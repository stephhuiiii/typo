Feature: merge articles as an admin

As a shared blogger
So that I can merge articles with similar topics/views
I want to merge the articles in question

Background: articles ready to be merged

Given the blog is set up

Given the following articles exist:
| id | title |
| 1 | Article A |
| 2 | Article B |

Given the following users exist:
| id |  login | profile_id | password | email |
| 1 | Steph | 1 | aaaaa | shui@gmail.com |
| 2 | Ben | 2 | bbbbb | bhsieh@gmail.com |


Scenario: non-admin cannot merge articles:                 
When the current user is not an admin
And I am on the edit page for article with id 1
Then I should not see "Merge Articles"

Scenario: admin can merge articles
When the current user is an admin
When I am on the edit page for article with id 1
Then I should see "Merge Articles"