class Table
	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :age, Integer
	property :title, String
	property :article, String	
end
