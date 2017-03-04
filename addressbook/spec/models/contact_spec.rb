require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "is a thing" do
    expect{Contact.new}.to_not raise_error
  end

  it "has a given_name, family_name, email, and address" do
    contact = Contact.new
    contact.given_name = 'Jack'
    contact.family_name = 'Black'
    contact.email = 'jackblack@gmail.com'
    contact.address = '123 Hollywood Dr., Hollywood, CA'
    expect(contact.save).to eq true
    c1 = Contact.find_by_email 'jackblack@gmail.com'
    expect(c1.given_name).to eq 'Jack'
    expect(c1.family_name).to eq 'Black'
    expect(c1.email).to eq 'jackblack@gmail.com'
    expect(c1.address).to eq '123 Hollywood Dr., Hollywood, CA'
  end
end
