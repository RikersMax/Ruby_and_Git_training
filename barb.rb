require 'sinatra'
require 'colorize'

get '/' do
	erb :welcome2
end

post '/' do
   	@name = params[:User_name]
	@number = params[:Phone]
	@date = params[:Date_time]

	@title = 'Thank you'
	@mess = "Dear <i style=\"color: red\">#{@name}</i> well be waiting for you at #{@date} <sup>2023</sup>"
	@mess2 = "We are you calling by phone <em style=\"color:blue\">#{@number}</em> <sub>your number</sub> <mark>This is mark</mark>"
	
	clients_path = File.dirname(__FILE__) + '/clients/'
	f = File.new(clients_path + "#{@name}.txt", 'w')
	f.puts('Name - ' + @name.capitalize)
	f.puts('Phone - ' + @number)
	f.puts('Date - ' + @date)
	erb :message2

end
