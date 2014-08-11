require 'sqlite3'
class Conexion
	@@db
	def initialize
		begin
        @@db = SQLite3::Database.open "test.db"
        @@db.execute "CREATE TABLE IF NOT EXISTS Employee(name TEXT, apll TEXT, id TEXT,
        	telf TEXT,mail TEXT, cargo TEXT, vlhr TEXT, hrtr TEXT)"
        rescue SQLite3::Exception => e
		end  
	end
	def insert(nom, aplld, id, telfn, mail, cargo, vlhr, hrtr)
		begin
		@@db = SQLite3::Database.open "test.db"
		@@db.execute "INSERT INTO Employee VALUES('#{nom}', '#{aplld}', '#{id}', '#{telfn}', '#{mail}', '#{cargo}', '#{vlhr}', '#{hrtr}')"
		rescue SQLite3::Exception => e 
        puts "Exception occured"
        puts e
    	end
	end
	def watch
		begin
		@@db = SQLite3::Database.open "test.db"
		@@db.results_as_hash =true
		@@db.execute "SELECT * FROM Employee"
		rescue SQLite3::Exception => e 
        puts "Exception occured"
        puts e
    	end
	end
end

class Employee < Conexion
    def newc(nom, aplld, id, telfn, mail, cargo, vlhr, hrtr)
        insert(nom, aplld, id, telfn, mail, cargo, vlhr, hrtr)
    end
end