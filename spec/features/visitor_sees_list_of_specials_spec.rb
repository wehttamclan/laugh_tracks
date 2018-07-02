RSpec.describe 'a visitor' do
  context 'visiting /comedians' do
    it 'should show a list of specials for each comedian' do
      comedian1 = Comedian.create(name: "Steven Wright", age: 12)
      special1  = comedian1.specials.create(name: "I have a pony.")
      special2  = comedian1.specials.create(name: "I still have a pony.")

      pony = special1.name
      still_a_pony = special2.name

      visit '/comedians'

      expect(page).to have_content(pony)
      expect(page).to have_content(still_a_pony)
    end
    it 'should show average age of comedians' do
      comedian1 = Comedian.create(name: "Bill Hicks", age: 34)
      comedian2 = Comedian.create(name: "Steven Wright", age: 12)

      expected = 23

      visit '/comedians'

      expect(page).to have_content("Average age: #{expected}")
    end
    xit 'should show count of specials for each comedian' do

      visit '/comedians'

      expect(page).to have_content()
    end
  end
end
