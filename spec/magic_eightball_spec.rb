require 'rspec'
require_relative '../lib/magic_eightball'

describe 'Test the eightball' do
  yesses = ['It is certain',
            'It is decidedly so',
            'Without a doubt',
            'Yes definitely',
            'You may rely on it',
            'As I see it, yes',
            'Most likely',
            'Outlook good',
            'Yes',
            'Signs point to yes']

  maybes = ['Reply hazy try again',
            'Ask again later',
            'Better not tell you now',
            'Cannot predict now',
            'Concentrate and ask again']

  nos = ['Don\'t count on it',
         'My reply is no',
         'My sources say no',
         'Outlook not so good',
         'Very doubtful']

  it 'will give me yes commands' do
    expect(yesses).to include MagicEightball.reply(:yes)
  end

  it 'will give me no commands' do
    expect(nos).to include MagicEightball.reply(:no)
  end

  it 'will give me maybe commands' do
    expect(maybes).to include MagicEightball.reply(:maybe)
  end

  it 'will give me shake it off' do
    expect(yesses + nos + maybes).to include MagicEightball.shake
  end

end
