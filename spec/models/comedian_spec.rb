RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end
  describe 'Class Methods' do
    describe 'average_age' do
      it 'should calculate average age of all comedians' do
        Comedian.create(name: "Bill Hicks", age: 34)
        Comedian.create(name: "Steven Wright", age: 12)

        expect(Comedian.average_age).to eq(23)
      end
    end
  end
  describe 'Instance Methods' do
    describe 'specials_count' do
      it 'should calculate count of specials for each comedian' do
        comedian1 = Comedian.create(name: "Steven Wright", age: 12)
        comedian1.specials.create(name: "I have a pony.")
        comedian1.specials.create(name: "I still have a pony.")
        comedian2 = Comedian.create(name: "Bill Hicks", age: 12)
        comedian2.specials.create(name: "Live at Turing.")

        expect(comedian1.specials_count).to eq(2)
        expect(comedian2.specials_count).to eq(1)
      end
    end
  end
end
