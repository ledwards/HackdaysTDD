Given /^there is an experience with an upcoming event$/ do
  @experience = Factory.create(:upcoming_experience)
end

When /^I book the experience for myself$/ do
  visit(experience_path(@experience))
  click_link("Book Now")
  fill_in("Name on Card", with: "Lee Edwards")
  fill_in("Credit Card Number", with: "424242424242")
  fill_in("card-month", with: "12")
  fill_in("card-year", with: "2016")
  fill_in("CVC", with: "329")
  click_button("Purchase")
end

Then /^I should see my successful order$/ do
  page.should have_content("Sweet! You're going on a SideTour")
end

Then /^Stripe should have recorded a charge for the order$/ do
  charge_id = @order.stripe_charge_id
  stripe_order = Stripe::Charge.retrieve(charge_id)
  stripe_order.amount.should == @order.price_in_cents
end

