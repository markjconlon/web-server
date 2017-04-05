class Joke
  @@jokes = []
  attr_reader :joke, :punchline
  def initialize(joke, punchline)
    @joke = joke
    @punchline = punchline
  end

  def self.create(joke, punchline)
    current_joke = new(joke, punchline)
    @@jokes << current_joke
  end

  def self.all
    @@jokes
  end
end

# puts (Joke.create("Why did the chicken cross the road..", "to get to the other side"))
# puts (Joke.create("Why did the rooster cross the road..", "because it was stalking the chicken"))
# puts Joke.all.inspect
