require 'spec_helper'

describe Product do
	context 'adding products' do 
		it 'allows admins to add a product to the store' do 
			user = create(:user)
			cart = create(:cart)
			visit new_session_path
			fill_in 'Email', with: "admin"
			fill_in 'Password', with: "admin"
			cart = create(:cart)
			click_button 'Log In'
			click_link 'Add a new Product'
			fill_in 'What is the name of the product?', with: 'undies'
			fill_in 'Enter the price', with: '10'
			fill_in 'Enter the description', with: 'tight, and white!'
			click_button 'Create Product'
			page.should have_content 'undies'
		end
	end
end