def announce_lunch_desire(user_name, restaurant_name)
  visit "/"
  fill_in "lunch_desire_name_of_person", :with => user_name
  fill_in "lunch_desire_name_of_restaurant", :with => restaurant_name
  click_on "Save"
end

Given /^I am "(.*?)"$/ do |name|
  @user_name = name
end

When /^I announce that I'd like to go to "(.*?)"$/ do |restaurant_name|
  announce_lunch_desire(@user_name, restaurant_name)
end

Then /^the main page should say "(.*?)"$/ do |desire|
  page.should have_content(desire)
end

Given /^I have just announced that I'd like to go to "(.*?)"$/ do |restaurant_name|
  announce_lunch_desire(@user_name, restaurant_name)
end

When /^I change my lunch destination desire to be "(.*?)"$/ do |restaurant_name|
  pending # express the regexp above with the code you wish you had
end
