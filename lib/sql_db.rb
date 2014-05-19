class RPS::SQLDB

 def initialize
    @db = SQLite3::Database.new "test.db"

    db.execute <<-SQL

      CREATE TABLE IF NOT EXISTS users (
        id integer PRIMARY KEY AUTOINCREMENT,
        name string,
        password string,
        );
    SQL

    db.execute <<-SQL

      CREATE TABLE IF NOT EXISTS game (
        id integer PRIMARY KEY AUTOINCREMENT,
        winner string,
        name string
        FOREIGN KEY(user_id) REFERENCES users(id)
        );
    SQL

    db.execute <<-SQL

      CREATE TABLE IF NOT EXISTS game (
        id integer PRIMARY KEY AUTOINCREMENT,
        winner string,
        name string
        FOREIGN KEY(user_id) REFERENCES users(id)
        );
    SQL

    db.execute <<-SQL

    CREATE TABLE IF NOT EXISTS game (
        id integer PRIMARY KEY AUTOINCREMENT,
        winner string,
        name string
        FOREIGN KEY(user_id) REFERENCES users(id)
        );
    SQL
end
