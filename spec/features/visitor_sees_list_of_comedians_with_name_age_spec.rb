RSpec.describe 'a visitor' do
  context 'visiting /comedians' do
    it 'should show a list of comedians with name and age' do
      comedian1 = Comedian.create(name: "Bill Hicks", age: 34)
      comedian2 = Comedian.create(name: "Steven Wright", age: 12)

      hicks = comedian1.name
      wright = comedian2.age

      visit '/comedians'

      expect(page).to have_content(hicks)
      expect(page).to have_content(wright)
    end
  end
end
