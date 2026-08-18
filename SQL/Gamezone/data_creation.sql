
SQL> CREATE TABLE players (
  2      player_id NUMBER PRIMARY KEY,
  3      player_name VARCHAR2(50),
  4      country VARCHAR2(30),
  5      signup_date DATE
  6  );

Table created.

SQL> CREATE TABLE games (
  2      game_id NUMBER PRIMARY KEY,
  3      game_name VARCHAR2(50),
  4      genre VARCHAR2(30),
  5      release_date DATE
  6  );

Table created.

SQL> CREATE TABLE sessions (
  2      session_id NUMBER PRIMARY KEY,
  3      player_id NUMBER,
  4      game_id NUMBER,
  5      session_date DATE,
  6      duration_minutes NUMBER,
  7      FOREIGN KEY (player_id) REFERENCES players(player_id),
  8      FOREIGN KEY (game_id) REFERENCES games(game_id)
  9  );

Table created.

SQL> CREATE TABLE purchases (
  2      purchase_id NUMBER PRIMARY KEY,
  3      player_id NUMBER,
  4      game_id NUMBER,
  5      purchase_date DATE,
  6      amount NUMBER(10,2),
  7      FOREIGN KEY (player_id) REFERENCES players(player_id),
  8      FOREIGN KEY (game_id) REFERENCES games(game_id)
  9  );

Table created.




