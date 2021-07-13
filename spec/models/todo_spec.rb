# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Todo, type: :model do
  it { should belong_to :project }
  it { should have_many(:comments).dependent(:destroy) }
  it { should validate_presence_of(:name) }
end
