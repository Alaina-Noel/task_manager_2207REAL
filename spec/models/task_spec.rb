require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'returns true when the title is laundry' do
        task = Task.create!(title: 'laundry', description: 'clean clothes')

        expect(task.laundry?).to be(true)
      end

      it 'returns true if the description is laundry' do
        task = Task.create!(title:'clean clothing', description: 'laundry')

        expect(task.laundry?).to be(true)
      end

      it 'returns false when neither the description nor title is laundry' do
        task = Task.create!(title:'clean clothing', description: 'wash clothing')

        expect(task.laundry?).to be(false)
      end

      it 'returns true when the title contains the word laundry' do
        task = Task.create!(title:'clean laundry', description: 'wash clothing')

        expect(task.laundry?).to be(true)
      end
    
      it 'is case insensitive when checking if the title contains the word laundry' do
        task = Task.create!(title:'clean LaunDRy', description: 'wash clothing')

        expect(task.laundry?).to be(true)
      end
    
      it 'returns true when the description contains the word laundry' do
      task = Task.create!(title:'clean clothing', description: 'do the laundry')

      expect(task.laundry?).to be(true)
    end
    
      it 'is case insensitive when checking if the description contains the word laundry' do
      task = Task.create!(title:'clean clothing', description: 'do the LaUndrY')

      expect(task.laundry?).to be(true)
    end

    end
  end
  
end