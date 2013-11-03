Given /^the following articles exist:$/ do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

Given /^the following users exist:$/ do |table|
  table.hashes.each do |user|
    User.create!(user)
  end
end

Given /^the following comments exist:$/ do |table|
  table.hashes.each do |comment|
    Comment.create!(comment)
  end
end

When /^the current user is not an admin$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'Ben'
  fill_in 'user_password', :with => 'bbbbb'
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end

When /^the current user is an admin$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'Steph'
  fill_in 'user_password', :with => 'aaaaa'
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end

Then /^I should see the body of "(.*?)"$/ do |arg1|
   # express the regexp above with the code you wish you had
end

Then /^I should see the title of "(.*?)"$/ do |arg1|
   # express the regexp above with the code you wish you had
end

Then /^the author field should contain "(.*?)"$/ do |arg1|
  
end

Then /^the title field should contain "(.*?)"$/ do |arg1|
  
end

#Given /^the current user is "(.*?)"$/ do |arg1|
   # express the regexp above with the code you wish you had
#end

Then /^I should see the text of "(.*?)"$/ do |arg1|
   # express the regexp above with the code you wish you had
end

#When /^the current user is not "(.*?)"$/ do |arg1|
   # express the regexp above with the code you wish you had
#end