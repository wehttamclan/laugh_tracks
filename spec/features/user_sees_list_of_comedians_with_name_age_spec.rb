RSpec.describe 'a visitor' do
  context 'visiting /comedians' do
    it 'should show a list of comedians' do
      comedian1 = Comedian.create(name: "Bill Hicks", age: 34)
      comedian2 = Comedian.create(name: "Steven Wright", age: 12)

      hicks = comedian1.name
      wright = comedian2.name

      visit '/comedians'

      expect(page).to have_content(hicks)
      expect(page).to have_content(wright)

    end
    xit 'should show name and age of comedians' do

      visit '/comedians'


      expect(page).to have_content()

    end
    xit 'should show average age of comedians' do

      visit '/comedians'

      expect(page).to have_content()

    end
    xit 'should show count of specials for each comedian' do

      visit '/comedians'

      expect(page).to have_content()

    end
  end
end
