Given /^I am on the teams page$/ do
  visit(teams_path)
end

When /^I create a new team$/ do
  click_link("New Team")
  fill_in("Name", with: "Team Buzzworthy")
  fill_in("Description", with: "Building the next hyperlocal social photo sharing app with gamification synergies")
  fill_in("Member 1", with: "Andrew")
  fill_in("Member 2", with: "Brent")
  click_button("Create Team")
end

Then /^I should be able to see the new team$/ do
  visit(teams_path)
  page.should have_content("Team Buzzworthy")
  page.should have_content("2 Members")
end
