require 'rails_helper'


describe Organization do

  it "validates the presence of a name" do
    organization = Organization.new
    organization.valid?
    expect(organization.errors[:name].present?).to eq(true)

    organization.name = "Hogwarts"
    organization.valid?
    expect(organization.errors[:name].present?).to eq(false)
  end

  it "validates the uniqueness of a name" do
    Organization.create!(
      name: "Hogwarts")

    organization = Organization.new(name: "Hogwarts")
    organization.valid?
    expect(organization.errors[:name].present?).to eq(true)

    organization.name = "Comcast"
    organization.valid?
    expect(organization.errors[:name].present?).to eq(false)

  end


end
