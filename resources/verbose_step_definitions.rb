# step_definitions/web_steps.rb

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

# step_definitions/mingle_steps.rb

When /^I pick a Tuesday$/ do
  page.execute_script %{ $(".datepicker tr:nth-child(2) td:nth-child(3)").trigger("click"); }
end

# step_definitions/authorization_steps.rb

When /^I grant LinkedIn access$/ do
  main, popup = page.driver.browser.window_handles
  within_window(popup) do
    fill_in("Email", with: "lee@sidetour.com")
    fill_in("Password", with: "my-actual-password")
    click_on("Ok, I'll Allow It")
  end
end

