Given(/^I have the Hello World project$/) do
  puts "Yes, I have an Hello World project."
end

When(/^I write a Hello World test$/) do
  puts "Yes, I have my Hello World test."
end

Then(/^I should be able to run it and see "(.*?)" printed on screen$/) do |arg1|
  visit("/hello_world/hello")
  expect(page).to have_content(arg1)
end