class Mydatabase < ActiveRecord::Base

	#ENV = postgresql://[myname]:postgres@localhost:5432/[mydatabase_name]
	establish_connection(ENV['DATABASE_URL_mydatabase'])

	#もしくは

#	establish_connection(
#    adapter:  "postgresql",
#    host:     "",
#    username: ENV['myname'],
#    password: "",
#    database: ENV['mydatabase_name']
#	)

end