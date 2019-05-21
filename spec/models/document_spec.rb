require 'rails_helper'

RSpec.describe Document, type: :model do
  describe '#create' do
    subject { Document.create title: "test title", body: "lorem ipsum" }
    it 'creates a new Document' do
      expect { subject }.to change { Document.count }.by(1)
    end
  end
end
