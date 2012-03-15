Given /^there is an item with title "([^"]*)" and tag "([^"]*)"$/ do |title,tag|
  Factory(:item, :title => title, :tags => Array(tag))
end

When  /^I visit the page of tag "([^"]*)"$/ do |tag| 
  visit(items_path(:tag=>tag))
end


