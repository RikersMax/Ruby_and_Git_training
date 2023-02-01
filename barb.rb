require 'sinatra'
require 'colorize'

logfile = Dir.entries('./clients').drop(2)

get '/' do
	erb :welcome1
end

get '/admin' do
  erb :welcome2
end

get '/clear' do
  File.open('./clients/test.txt', 'w').write('')
  erb :message2
end

post '/admin' do
	@Admin_name = params[:Admin_name]
	@Admin_pass = params[:Admin_pass]

	if @Admin_name == 'admin' && @Admin_pass == 'admin'
		@title = 'Welcome You admin'
		@mess = 'choice file'
		@logfile = File.read('./clients/test.txt')

		erb :message2
	else
		@title = 'access'
		@mess = 'denied'
		erb :message2
	end
end

post '/' do
  @name = params[:User_name]
	@number = params[:Phone]
	@date = params[:Date_time]

  if @name
	clients_path = File.dirname(__FILE__) + '/clients/'
	f = File.open(clients_path + "test.txt", 'a')
	f.puts('Name - ' + "<i style=\"color :green\">#{@name.capitalize}</i>"+ '<br \>')
	f.puts('Phone - ' + @number + '<br \>')
	f.puts('Date - ' + @date + '<br \>')
  f.puts('=================<br \>')
	erb :message1
	end

end

