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
