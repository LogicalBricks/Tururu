Given /^I am on the new item page$/ do
 visit(new_item_path)
end

When /^I fill in item with title "([^"]*)" and tags "([^"]*)"$/ do |title,tags|
  fill_in('item_title', :with => title) 
  fill_in('item_tags_tokens', :with => tags)
  click_button('Create Item')
end

Then /^I should be in show page$/ do
  current_path = URI.parse(current_url).path
  assert current_path =~ /items\/\w+/
end




