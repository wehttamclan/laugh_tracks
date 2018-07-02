RSpec.describe 'a visitor' do
  context 'visiting /comedians' do
    it 'should show a list of comedians with name and age' do
      comedian1 = Comedian.create(name: "Bill Hicks", age: 34)
      comedian2 = Comedian.create(name: "Steven Wright", age: 12)

      visit '/comedians'

      expect(page).to have_content("#{comedian1.name}, #{comedian1.age}")
      expect(page).to have_content("#{comedian2.name}, #{comedian2.age}")
    end
  end
end
