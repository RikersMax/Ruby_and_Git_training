require 'sinatra'
require 'colorize'

#logfile = Dir.entries('./clients').drop(2)

get '/test_style' do
   	erb :test
end

get '/' do
	erb :welcome1
end

get '/admin' do
  erb :welcome2
end

get '/clear' do
  File.open('./public/test.html', 'w').write('')
  @logfile = 'clear'
  erb :message2
end

post '/admin' do
	@Admin_name = params[:Admin_name]
	@Admin_pass = params[:Admin_pass]

	if @Admin_name == 'admin' && @Admin_pass == 'admin'
		@title = 'Welcome You admin'
		@mess = 'choice file'
		@logfile = File.read('./public/test.html')

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
	clients_path = File.dirname(__FILE__) + '/public/'
	f = File.open(clients_path + "test.html", 'a')   	
	f.puts("<ul>\n<li>Name - " + "<i style=\"color :green\">#{@name.capitalize}</i></li>"+ '<br />')
	f.puts('<li>Phone - ' + @number + '</li><br />')
	f.puts('<li>Date - ' + @date + "<br /></li></ul>")
  #f.puts('=================<br \>')
	erb :message1
	end

end

