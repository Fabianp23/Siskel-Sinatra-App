require 'sinatra'
require './models/siskel.rb'

get '/' do
  title = params[:title]
  @movie = Siskel.new(title)
  erb :index
end

# Next Steps
#
# Now, there are obviously some problems with this implementation.
# Had we been using test-driven development, these may have become
# more apparent. Here are a few ideas for additional iterations of this application to make it more robust.
#
# Using Minitest or Rspec, add some test coverage to this app.
# If we don't pass in any parameters to /movie, an error is thrown. How can we safeguard against this?
# Similarly, if we pass in a movie that doesn't exist, we don't necessarily receive an error, but the output isn't quite as expected. Let's change that up.
