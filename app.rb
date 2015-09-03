require 'sinatra'
require 'shotgun'
require 'data_mapper'

require './models/table.rb'



DataMapper.setup(:default, 'postgres://postgres:simplon07@127.0.0.1:5432/blog')
DataMapper.finalize
DataMapper.auto_migrate!
DataMapper.auto_upgrade!


get '/' do 
	@blog = Table.all()
	# puts Table.last.name
	erb :index
end

post '/' do
	blog = Table.new(params[:tables])
	blog.save
	redirect '/'
end
