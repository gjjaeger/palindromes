require('sinatra')
  require('sinatra/reloader')
  require('./lib/palindrome_check')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/display') do
    @word = params.fetch('word').palindrome_check()
    erb(:index)
  end
