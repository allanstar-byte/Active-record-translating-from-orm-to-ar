require 'pry'
require 'active_record'

# DB connection

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: 'db/test.sqlite'
)

# Create table attributes

sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dogs(
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
    )
SQL

ActiveRecord::Base.connection.execute(sql)

# Inheritting a from active record
class Dog < ActiveRecord::Base
end

# Log SQL output to the terminal
# ActiveRecord::Base.logger = Logger.new(STDOUT)
binding.pry
""