require 'rails_helper'

RSpec.describe Catgory, type: :model do
  it { should have_many(:books)  }

  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_least(3)}
end
