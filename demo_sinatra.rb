# encoding: cp1251
require 'sinatra'

def construct
	@title = 'Under construction'
	@mess = 'This is page under construction!'

	erb :message   	
end

	x = 0
	summ = 0
	6.times do
		x = rand(0..6)
		summ += x
		#print("\r#{x}")
		#sleep 1
	end
	#puts("\nYou got #{x}")
	#puts("all sum - #{summ}")


get '/max' do
	@title = 'Thes is my name'
   	erb :max
end

get '/contact' do
	@title = 'List contact'
	@mess = 'My number: 222-333'

	erb :message
end

get '/faq' do
   	construct 
end

get '/' do
	erb :index

end

post '/' do    	
	@login = params[:xxx]
	@pas = params[:sss]
	
	if @login == 'max' && @pas == 'admin'
		return erb :welcome
	elsif @login == 'admin' && @pas == 'admin'
		@mess = 'LOL'
		erb :index
	else
		@mess = 'Access denide!'
		erb :index
	end
end