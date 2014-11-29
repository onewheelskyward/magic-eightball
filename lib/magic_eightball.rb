class MagicEightball
  # Spread the Magic Eightball(tm) love across the world.
  #
  # Example:
  #   >> MagicEightball.shake
  #   => It is decidedly so
  #   >> MagicEightball.reply(:maybe)
  #   => Ask again later
  #

  @@options = [:yes, :maybe, :no]

  @@eight_ball = {yes: ['It is certain',
                      'It is decidedly so',
                      'Without a doubt',
                      'Yes definitely',
                      'You may rely on it',
                      'As I see it, yes',
                      'Most likely',
                      'Outlook good',
                      'Yes',
                      'Signs point to yes'],
                maybe: ['Reply hazy try again',
                        'Ask again later',
                        'Better not tell you now',
                        'Cannot predict now',
                        'Concentrate and ask again'],
                no: ['Don\'t count on it',
                     'My reply is no',
                     'My sources say no',
                     'Outlook not so good',
                     'Very doubtful']}

  def self.shake
    @@eight_ball[@@options.sample].sample
  end

  def self.reply(option)
    if @@options.include? option
      @@eight_ball[option].sample
    end
  end
end
