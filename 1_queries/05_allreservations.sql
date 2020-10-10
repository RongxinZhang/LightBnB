SELECT properties.id, properties.title, reservations.start_date, 
  properties.cost_per_night, avg(rating) as average_rating 
FROM users
INNER JOIN reservations ON reservations.guest_id = users.id
INNER JOIN properties ON properties.id = reservations.property_id
INNER JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE users.id = 1 AND
  reservations.end_date < now()::date
GROUP BY properties.id, reservations.start_date
ORDER BY reservations.start_date ASC;


-- CREATE TABLE users
-- (
--   id SERIAL PRIMARY KEY NOT NULL,
--   name VARCHAR(255) NOT NULL,
--   email VARCHAR(255) NOT NULL,
--   password VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE properties
-- (
--   id SERIAL PRIMARY KEY NOT NULL,
--   owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL,

--   title VARCHAR(255) NOT NULL,
--   description TEXT NOT NULL,
--   thumbnail_photo_url VARCHAR(255) NOT NULL,
--   cover_photo_url VARCHAR(255) NOT NULL,
--   cost_per_night INTEGER NOT NULL DEFAULT 0,
--   parking_spaces INTEGER NOT NULL DEFAULT 0,
--   number_of_bathrooms INTEGER NOT NULL DEFAULT 0,
--   number_of_bedrooms INTEGER NOT NULL DEFAULT 0,

--   country varchar(255) NOT NULL,
--   street varchar(255) NOT NULL,
--   city varchar(255) NOT NULL,
--   province varchar(255) NOT NULL,
--   post_code varchar(255) NOT NULL,

--   active BOOLEAN NOT NULL DEFAULT TRUE
-- );

-- CREATE TABLE reservations
-- (
--   id SERIAL PRIMARY KEY NOT NULL,
--   property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE NOT NULL,
--   guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL,
--   start_date DATE NOT NULL,
--   end_date DATE NOT NULL
-- );