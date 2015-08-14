require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')
also_reload('lib/**/*.rb')

get('/') do
  @word_entries = Word.all()
  erb(:index)
end

# post ('/new_word') do
#   word_entry = params.fetch('word_entry')
#   new_word_entry = Word.new(word_entry)
#   new_word.save()
#   @details =

get("/details/:id") do
  @word_entry = Word.find(params.fetch('id').to_i())
  erb(:word)
end

post ('/new_word') do
  word_input = params.fetch('word_input')
  # definition_input = params.fetch('definition_input')
  new_word = Word.new(word_input)
  new_word.save()
  @word_entries = Word.all
  erb(:success)
end
