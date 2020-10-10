INSERT INTO users (
  id,
  name,
  email,
  password
  )
VALUES (1, 'one', 'one@a.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(2, 'two', 'two@a.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(3, 'three', 'three@a.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (
  owner_id,
  title,
  description ,
  thumbnail_photo_url,
  cover_photo_url,
  cost_per_night,
  parking_spaces,
  number_of_bathrooms,
  number_of_bedrooms,
  country,
  street,
  city,
  province,
  post_code,
  active 
  )
VALUES (1, 'Speed lamp',	'description',	'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350',	'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg',	9306,	6,  4,	8,	'Canada',	536, 'Namsub  Highway	Sotboske',	'Quebec',	28142,	TRUE),
(1,	'Blank corner',	'description',	'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350',	'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg',	85234,	6,	6,	7,	'Canada',	651, 'Nami Road	Bohbatev	', 'Alberta',	83680,	TRUE),
(2,	'Habit mix',	'description',	'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350',	'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg',	46058,	0,	5,	6,	'Canada',	1650, 'Hejto Center	Genwezuj	', 'Newfoundland And Labrador',	44583,	TRUE),
(3,	'Headed know',	'description',	'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&h=350',	'https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg',	82640,	0,	5,	5,	'Canada',	513, 'Powov Grove	Jaebvap	', 'Ontario',	38051,	TRUE),
(3,	'Port out',	'description',	'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg?auto=compress&cs=tinysrgb&h=350',	'https://images.pexels.com/photos/1475938/pexels-photo-1475938.jpeg',	2358,	2,	8,	0,	'Canada',	1392, 'Gaza Junction	Upetafpuv', 	'Nova Scotia',	81059,	TRUE),
(3,	'Fun glad',	'description',	'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg?auto=compress&cs=tinysrgb&h=350',	'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg',	34291,	6,	6,	4,	'Canada',	169, 'Nuwug Circle	Vutgapha	', 'Newfoundland And Labrador',	00159,	TRUE),
(3,	'Shine twenty',	'description',	'https://images.pexels.com/photos/2076739/pexels-photo-2076739.jpeg?auto=compress&cs=tinysrgb&h=350',	'https://images.pexels.com/photos/2076739/pexels-photo-2076739.jpeg',	13644,	1,	7,	8,	'Canada',	340, 'Dokto Park	Upfufa', 	'Nova Scotia',	29045,	TRUE),
(1,	'Game fill',	'description',	'https://images.pexels.com/photos/1756826/pexels-photo-1756826.jpeg?auto=compress&cs=tinysrgb&h=350',	'https://images.pexels.com/photos/1756826/pexels-photo-1756826.jpeg',	23428,	5,	6,	4,	'Canada',	834, 'Buwmi Road	Rotunif	', 'Newfoundland And Labrador',	58224,	TRUE);

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14'),
(1, 3, '2021-10-01', '2021-10-14'),
(3, 1, '2021-10-01', '2021-10-14'),
(2, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (
  guest_id,
  property_id,
  reservation_id,
  rating,
  message
)
VALUES (2, 5, 6, 3, 'messages'),
(1, 4, 1, 4, 'messages'),
(2, 1, 2, 4, 'messages'),
(3, 8, 5, 4, 'messages'),
(2, 2, 3, 5, 'messages'),
(3, 3, 4, 4, 'messages'),
(2, 6, 3, 5, 'messages');