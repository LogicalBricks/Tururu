Given /^there is a User$/ do
  Factory(:user)
end 

Given /^the User has posted the item with title "([^"]*)"$/ do |title|
  User.count.should == 1
  Factory(:item, :title => title, :user => User.first) 
end

When /^I visit the page for items$/ do
  User.count.should == 1
  visit(items_path)
end
  
Then /^I should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end 
end

