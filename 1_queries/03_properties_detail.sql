-- SELECT properties.id as id, title, cost_per_night, avg(rating) as average_rating
-- FROM properties
-- JOIN property_reviews ON properties.id = property_id
-- WHERE city LIKE '%ancouv%'
-- GROUP BY properties.id
-- -- HAVING avg(property_reviews.rating) >= 4
-- ORDER BY cost_per_night;
-- -- LIMIT 10;

SELECT properties.id as id, title, cost_per_night, avg(rating) as average_rating
FROM properties 
INNER JOIN property_reviews on properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
ORDER BY cost_per_night;
-- LIMIT 10;


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


-- CREATE TABLE property_reviews
-- (
--   id SERIAL PRIMARY KEY NOT NULL,
--   property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE NOT NULL,
--   guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE NOT NULL,
--   reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE NOT NULL,
--   rating SMALLINT NOT NULL DEFAULT 0,
--   message TEXT
-- );