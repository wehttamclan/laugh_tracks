RSpec.describe 'a visitor' do
  context 'visiting /comedians?age=34' do
    it 'should show a list of comedians age of 34' do
      comedian1 = Comedian.create(name: "Bill Hicks", age: 34)
      comedian2 = Comedian.create(name: "Steven Wright", age: 12)
      comedian3 = Comedian.create(name: "Mitch Hedberg", age: 34)

      visit '/comedians?age=34'
save_and_open_page
      expect(page).to have_content("#{comedian1.name}")
      expect(page).to have_content("#{comedian3.name}")
      expect(page).to_not have_content("#{comedian2.name}")
    end
  end
end
