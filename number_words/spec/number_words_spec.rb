require_relative '../numbers_words'

RSpec.describe "" do
	context "Single number to string" do
		it "should return the string for a single number (1-9)" do
			expect(numbers_to_words(1)).to eq('one') 
		end
		it "should return the string for a single number (1-9)" do
			expect(numbers_to_words(3)).to eq('three') 
			expect(numbers_to_words(7)).to eq('seven') 
			expect(numbers_to_words(9)).to eq('nine') 
		end
		it "should return the string for a single number 10" do
			expect(numbers_to_words(10)).to eq('ten') 
		end
		it "should return the string for a single number between 10-19" do
			expect(numbers_to_words(12)).to eq('twelve') 
		end
		it "should return the string for a single number between 10-19" do
			expect(numbers_to_words(19)).to eq('nineteen') 
		end
		it "should return the string for 20" do
			expect(numbers_to_words(20)).to eq('twenty') 
		end
		it "should return the string for 25" do
			expect(numbers_to_words(25)).to eq('twenty five') 
		end
		it "should return the string for 37" do
			expect(numbers_to_words(37)).to eq('thirty seven') 
		end

		it "should return the string for 44" do
			expect(numbers_to_words(44)).to eq('fourty four') 
		end

		it "should return the string for 52" do
			expect(numbers_to_words(52)).to eq('fifty two') 
		end

		it "should return the string for numbers 1-99" do
			expect(numbers_to_words(66)).to eq('sixty six') 
			expect(numbers_to_words(75)).to eq('seventy five') 
			expect(numbers_to_words(84)).to eq('eighty four') 
			expect(numbers_to_words(99)).to eq('ninety nine')
		end

		it "should return 100" do
			expect(numbers_to_words(100)).to eq('one hundred') 
		end

		it "should return 101" do
			expect(numbers_to_words(101)).to eq('one hundred and one') 
		end	

		it "should return 109" do
			expect(numbers_to_words(109)).to eq('one hundred and nine') 
		end

		it "should return 110" do
			expect(numbers_to_words(110)).to eq('one hundred and ten') 
		end

		it "should return 111" do
			expect(numbers_to_words(111)).to eq('one hundred and eleven') 
		end

		it "should return 120" do
			expect(numbers_to_words(120)).to eq('one hundred and twenty') 
		end

		it "should return a string for numbers that are multiples of 10 between 100 and 999" do
			expect(numbers_to_words(230)).to eq('two hundred and thirty') 
			expect(numbers_to_words(540)).to eq('five hundred and fourty') 
			expect(numbers_to_words(990)).to eq('nine hundred and ninety') 
		end

		it "should return a string for numbers that are  between 100 and 999" do
			expect(numbers_to_words(231)).to eq('two hundred and thirty one') 
		end

	end
end
