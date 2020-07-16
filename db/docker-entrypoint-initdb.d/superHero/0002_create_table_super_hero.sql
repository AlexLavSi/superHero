create table if not exists heroes
(
    id int auto_increment primary key not null,
    intelligence int not null,
    strength int not null,
    speed int not null,
    durability int not null,
    power int not null,
    combat int not null,
    img varchar(256) default null,
    biography json default null,
    created_at timestamp default current_timestamp not null,
    updated_at timestamp default current_timestamp on update current_timestamp not null
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into heroes (id, intelligence, strength, speed, durability, power, combat, img, biography)
 values
    (1, 38, 100, 17, 80, 24, 64, 'https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg', '{
        "full-name": "Richard Milhouse Jones",
        "alter-egos": "No alter egos found.",
            "aliases": [
            "Rick Jones"
            ],
        "place-of-birth": "Scarsdale, Arizona",
            "first-appearance": "Hulk Vol 2 #2 (April, 2008) (as A-Bomb)",
            "publisher": "Marvel Comics",
        "alignment": "good"
    }'),

    (2, 88, 28, 35, 65, 100, 85, 'https://www.superherodb.com/pictures2/portraits/10/100/956.jpg', '{
      "full-name": "Abraham Sapien",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Langdon Everett Caul",
        "Abraham Sapien",
        "Langdon Caul"
      ],
      "place-of-birth": "-",
      "first-appearance": "Hellboy: Seed of Destruction (1993)",
      "publisher": "Dark Horse Comics",
      "alignment": "good"
    }'),

    (3, 50, 90, 53, 64, 99, 65, 'https://www.superherodb.com/pictures2/portraits/10/100/1460.jpg', '{
      "full-name": "",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Lagzia"
      ],
      "place-of-birth": "Ungara",
      "first-appearance": "Showcase #22 (October, 1959)",
      "publisher": "DC Comics",
      "alignment": "good"
    }'),

    (4, 63, 80, 53, 90, 62, 95, 'https://www.superherodb.com/pictures2/portraits/10/100/1.jpg', '{
      "full-name": "Emil Blonsky",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Agent R-7",
        "Ravager of Worlds"
      ],
      "place-of-birth": "Zagreb, Yugoslavia",
      "first-appearance": "Tales to Astonish #90",
      "publisher": "Marvel Comics",
      "alignment": "bad"
    }'),

    (5, 88, 63, 83, 100, 100, 55, 'https://www.superherodb.com/pictures2/portraits/10/100/181.jpg', '{
      "full-name": "Abraxas",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "-"
      ],
      "place-of-birth": "Within Eternity",
      "first-appearance": "Fantastic Four Annual #2001",
      "publisher": "Marvel Comics",
      "alignment": "bad"
    }'),

    (6, 38, 80, 25, 100, 98, 64, 'https://www.superherodb.com/pictures2/portraits/10/100/1448.jpg', '{
      "full-name": "Carl Creel",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Greithoth",
        "Crusher Creel",
        "Rocky Davis",
        "Dynamite Davis",
        "Lightningbolt",
        "Prisoner #24957"
      ],
      "place-of-birth": "New York City, New York",
      "first-appearance": "Daredevil #1 (April, 1964) (As Rocky Davis)",
      "publisher": "Marvel Comics",
      "alignment": "bad"
    }'),

    (7, 63, 10, 12, 100, 100, 64, 'https://www.superherodb.com/pictures2/portraits/10/100/1026.jpg', '{
      "full-name": "",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Takezo Kensei",
        "Richard Sanders"
      ],
      "place-of-birth": "-",
      "first-appearance": "Heroes S02E01 - Four Months Later...",
      "publisher": "NBC - Heroes",
      "alignment": "good"
    }'),

    (8, 69, 10, 33, 40, 37, 50, 'https://www.superherodb.com/pictures2/portraits/10/100/626.jpg"', '{
      "full-name": "Adam Strange",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Warrior of Two Worlds",
        "Savior of Rann"
      ],
      "place-of-birth": "Chicago, Illinois",
      "first-appearance": "Outsiders #6 (April, 1986)",
      "publisher": "DC Comics",
      "alignment": "good"
    }'),

    (10, 10, 8, 13, 5, 5, 20, 'https://www.superherodb.com/pictures2/portraits/10/100/10255.jpg"', '{
      "full-name": "Bob",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Bob",
        "agent of Hydra",
        "Bob",
        "agent of A.I.M"
      ],
      "place-of-birth": "-",
      "first-appearance": "Cable & Deadpool #38 (May, 2007)",
      "publisher": "Marvel Comics",
      "alignment": "good"
    }'),

    (11, 75, 28, 38, 80, 72, 95, 'https://www.superherodb.com/pictures2/portraits/10/100/396.jpg', '{
      "full-name": "Christoph Nord",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Maverick"
      ],
      "place-of-birth": "Unrevealed location in former East Germany",
      "first-appearance": "-",
      "publisher": "Marvel Comics",
      "alignment": "good"
    }'),

    (12, 50, 85, 100, 85, 100, 40, 'https://www.superherodb.com/pictures2/portraits/10/100/1358.jpg', '{
      "full-name": "Gabriel Lan",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "-"
      ],
      "place-of-birth": "Xandar, a planet in the Tranta system, Andromeda galaxy",
      "first-appearance": "Fantastic Four #120",
      "publisher": "Marvel Comics",
      "alignment": "bad"
    }'),

    (13, 56, 48, 35, 80, 34, 55, 'https://www.superherodb.com/pictures2/portraits/10/100/10422.jpg', '{
      "full-name": "Francis",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Frankie",
        "the A-Man",
        "the Attending"
      ],
      "place-of-birth": "-",
      "first-appearance": "Deadpool #14 (March, 1998)",
      "publisher": "Marvel Comics",
      "alignment": "bad"
    }'),

    (14, 63, 80, 23, 90, 100, 32, 'https://www.superherodb.com/pictures2/portraits/10/100/698.jpg', '{
      "full-name": "Alan Ladd Wellington Scott",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Green Lantern",
        "White King",
        "Sentinal"
      ],
      "place-of-birth": "Gotham City",
      "first-appearance": "All-American Comics 16 (1940)",
      "publisher": "DC Comics",
      "alignment": "good"
    }'),

    (15, 50, 80, 42, 90, 100, 50, 'https://www.superherodb.com/pictures2/portraits/10/100/10398.jpg', '{
      "full-name": "Alexander J. Mercer",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Prototype",
        "Zues",
        "Blacklight"
      ],
      "place-of-birth": "-",
      "first-appearance": "-",
      "publisher": "Wildstorm",
      "alignment": "bad"
    }'),

    (17, 63, 10, 17, 10, 7, 55, 'https://www.superherodb.com/pictures2/portraits/10/100/628.jpg', '{
      "full-name": "Alfred Thaddeus Crane Pennyworth",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Alfred Beagle"
      ],
      "place-of-birth": "-",
      "first-appearance": "Batman #16 (April, 1943)",
      "publisher": "DC Comics",
      "alignment": "good"
    }'),

    (18, 50, 28, 42, 90, 57, 60, 'https://www.superherodb.com/pictures2/portraits/10/100/10449.jpg', '{
      "full-name": "Xenomorph",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "-"
      ],
      "place-of-birth": "Your chest :)",
      "first-appearance": "Alien (1979)",
      "publisher": "Dark Horse Comics",
      "alignment": "bad"
    }'),

    (20, 63, 100, 83, 100, 100, 100, 'https://www.superherodb.com/pictures2/portraits/10/100/1390.jpg', '{
      "full-name": "",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Professor Ivos Amazing Android",
        "Timazo",
        "Humazo",
        "Hourmazo"
      ],
      "place-of-birth": "-",
      "first-appearance": "Brave and the Bold #30 (July, 1960)",
      "publisher": "DC Comics",
      "alignment": "bad"
    }'),

    (23, 75, 30, 58, 90, 100, 75, 'https://www.superherodb.com/pictures2/portraits/10/100/10431.jpg', '{
      "full-name": "Liam",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Angelus",
        "Twilight"
      ],
      "place-of-birth": "-",
      "first-appearance": "-",
      "publisher": "Dark Horse Comics",
      "alignment": "good"
    }'),

    (24, 63, 13, 46, 64, 28, 42, 'https://www.superherodb.com/pictures2/portraits/10/100/829.jpg', '{
      "full-name": "Warren Kenneth Worthington III",
      "alter-egos": "Archangel",
      "aliases": [
        "Formerly Death",
        "Dark Angel",
        "Angel",
        "Avenging Angel",
        "Archangel"
      ],
      "place-of-birth": "Centerport, Long Island, New York",
      "first-appearance": "X-Men #54-56 (1969)",
      "publisher": "Archangel",
      "alignment": "good"
    }'),

    (25, 38, 55, 23, 42, 17, 30, 'https://www.superherodb.com/pictures2/portraits/10/100/10405.jpg', '{
      "full-name": "Christina",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Angel",
        "Dusty"
      ],
      "place-of-birth": "-",
      "first-appearance": "Morlocks #1",
      "publisher": "Marvel Comics",
      "alignment": "good"
    }'),

    (26, 38, 10, 28, 28, 56, 60, 'https://www.superherodb.com/pictures2/portraits/10/100/1406.jpg', '{
      "full-name": "Angel Salvadore Bohusk",
      "alter-egos": "Tempest",
      "aliases": [
        "Tempest"
      ],
      "place-of-birth": "-",
      "first-appearance": "New X-Men #118 (November, 2001)",
      "publisher": "Tempest",
      "alignment": "good"
    }'),

    (28, 56, 48, 47, 85, 73, 80, 'https://www.superherodb.com/pictures2/portraits/10/100/632.jpg', '{
      "full-name": "Bernhard Baker",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "The Human Zoo; A-Man; The Man with Animal Powers"
      ],
      "place-of-birth": "-",
      "first-appearance": "Strange Adventures #180 (September, 1965)",
      "publisher": "DC Comics",
      "alignment": "good"
    }'),

    (29, 75, 80, 47, 56, 59, 64, 'https://www.superherodb.com/pictures2/portraits/10/100/1307.jpg', '{
      "full-name": "Annihilus",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "The Living Death That Walks",
        "Lord of the Negative Zone"
      ],
      "place-of-birth": "Planet of Arthros, Sector 17A, Negative Zone",
      "first-appearance": "Fantastic Four Annual #6 (1968)",
      "publisher": "Marvel Comics",
      "alignment": "bad"
    }'),

    (30, 100, 18, 23, 28, 32, 32, 'https://www.superherodb.com/pictures2/portraits/10/100/857.jpg', '{
      "full-name": "Hank Pym",
      "alter-egos": "Giant-Man, Goliath, Wasp II, Yellowjacket",
      "aliases": [
        "Hank Pym",
        "Doctor Pym",
        "Ant-Man",
        "Goliath",
        "Yellowjacket",
        "Wasp",
        "Earth''s Scientist Supreme"
      ],
      "place-of-birth": "Elmsford, New York",
      "first-appearance": "Tales to Astonish #27 (January, 1962) (as Hank Pym)  Tales to Astonish #35 (September, 1962) (as Ant-Man)",
      "publisher": "Giant-Man",
      "alignment": "good"
    }'),

    (31, 75, 18, 17, 40, 53, 30, 'https://www.superherodb.com/pictures2/portraits/10/100/166.jpg', '{
      "full-name": "Scott Lang",
      "alter-egos": "No alter egos found.",
      "aliases": [
        "Myrmidon",
        "Scott Edward Harris Lang"
      ],
      "place-of-birth": "Coral Gables, Florida",
      "first-appearance": "Avengers Vol 1 #181 (March, 1979)",
      "publisher": "Marvel Comics",
      "alignment": "good"
    }');
