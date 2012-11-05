Given /^I am "(.*?)"$/ do |name|
  @user_name = name
end

When /^I announce that I'd like to go to "(.*?)"$/ do |restaurant_name|
  visit "/"
  fill_in "Your name", :with => @user_name
  fill_in "Where you'd like to go to lunch", :with => restaurant_name
  click_on "Save"
end

Then /^the main page should say "(.*?)"$/ do |desire|
  page.should have_content(desire)
end
