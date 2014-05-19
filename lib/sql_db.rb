class RPS::SQLDB

 def initialize
    @db = SQLite3::Database.new "test.db"

    db.execute <<-SQL

      CREATE TABLE IF NOT EXISTS users (
        id integer PRIMARY KEY AUTOINCREMENT,
        user string,
        password string,
        );
    SQL

    db.execute <<-SQL

      CREATE TABLE IF NOT EXISTS text_tweets (
        id integer PRIMARY KEY AUTOINCREMENT,
        user string,
        password string,
        );
    SQL

end
