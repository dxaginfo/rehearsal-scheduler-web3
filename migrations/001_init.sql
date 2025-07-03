-- Users
table users (
  id serial primary key,
  name varchar(255),
  email varchar(255) unique not null,
  password_hash varchar(255),
  role varchar(50)
);

-- Bands
table bands (
  id serial primary key,
  name varchar(255),
  admin_id integer references users(id)
);

-- Band Members
table band_members (
  id serial primary key,
  band_id integer references bands(id),
  user_id integer references users(id)
);

-- Rehearsals
table rehearsals (
  id serial primary key,
  band_id integer references bands(id),
  datetime timestamptz,
  location varchar(255)
);

-- Attendance
table attendance (
  id serial primary key,
  rehearsal_id integer references rehearsals(id),
  user_id integer references users(id),
  status varchar(50)
);

-- Availability
table availability (
  id serial primary key,
  user_id integer references users(id),
  day_of_week varchar(20),
  start_time time,
  end_time time
);