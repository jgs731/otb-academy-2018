require_relative '../lib/hangman'

RSpec.describe do
	subject = HangMan.new()
	it "generates a word" do
		expect(subject.word_generator).to eq('test')
	end
	
	it "recognises when the input word is correct" do
		expect(subject.guess('t')).to eq({ 't' => true, 'e' => false, 's' => false, 't' => true })
	end
	
	it "recognises when the input word is incorrect" do
		expect(subject.guess('w')).to eq({ 't' => false, 'e' => false, 's' => false, 't' => false })
	end
	
	it "converts the chosen word into a game-ready format" do
		subject2 = WordFormatter.new()
		expect(subject2.word_formatter('test')).to eq('____')
	end
	
	it "checks the remaining letters" do
		expect(subject.check_remaining_letters).to eq('____')
	end
	
	it "shows the correctly guessed characters in-game" do
		expect(subject.guess('t')).to eq({ 't' => true, 'e' => false, 's' => false, 't' => true })
	end
	
	it "shows the current game progress" do
		hash = subject.guess('t')
		expect(subject.game_progress(hash)).to eq('t__t')
	end
	
end
		
