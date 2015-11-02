# THIS FILE PERFORMS RSPEC TESTS ON `warmup.rb`
# TO RUN YOUR TESTS TYPE: `rspec spec/the_warmup_spec.rb`

require "./warmup.rb"

describe "#say_hello" do
  it "returns 'hello'" do
    expect( say_hello ).to eq "hello"
  end
end

describe "#scream" do
  it "convert the message to uppercase" do
    expect( scream("boo") ).to start_with("BOO")
  end

  it "adds an exclamation point to the end of the message" do
    expect( scream("boo") ).to end_with("!")
    expect( scream("boo") ).to eq "BOO!"
  end
end

describe "#first_char" do
  it "returns the first letter of the word" do
    expect( first_char("juliana") ).to eq "j"
    expect( first_char("braus") ).to eq "b"
    expect( first_char("matt") ).to eq "m"
  end

  it "lowercases the first letter of the word" do
    expect( first_char("Juliana") ).to eq "j"
    expect( first_char("Braus") ).to eq "b"
    expect( first_char("Matt") ).to eq "m"
  end
end

describe "#polly_wanna" do
  it "echoes the original word" do
    expect( polly_wanna("donut") ).to match /donut/i
    expect( polly_wanna("cracker") ).to match /cracker/i
  end

  it "repeats the original word 3 times" do
    expect( polly_wanna("donut") ).to match /(donut){3}/i
    expect( polly_wanna("cracker") ).to match /(cracker){3}/i
  end
end

describe "#after_you" do
  it "returns 'no, after you'" do
    expect( after_you ).to eq "no, after you"
  end
end
