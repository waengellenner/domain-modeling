DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS photos;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS relationships;


CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT,
  real_name TEXT,
  location TEXT
);

CREATE TABLE photos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER, --relationship
  image_url TEXT,
  timestamp TEXT
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  photo_id INTEGER, --relationship
  liker_user_id INTEGER --relationship
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  photo_id INTEGER, --relationship
  commenter_user_id INTEGER, --relationship
  comment_text TEXT
);

CREATE TABLE relationships (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  follower_user_id INTEGER, --relationship
  followed_user_id INTEGER, --relationship
  timestamp TEXT
);