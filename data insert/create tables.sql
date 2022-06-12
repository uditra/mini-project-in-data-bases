CREATE TABLE possible_activity
(
  cost_of_arranging INT NOT NULL,
  act_name VARCHAR NOT NULL,
  cost_of_Participation INT NOT NULL,
  max_number_of_participants INT NOT NULL,
  PRIMARY KEY (act_name)
);

CREATE TABLE visiter
(
  ticket_id INT NOT NULL,
  visit_date DATE NOT NULL,
  age INT NOT NULL,
  PRIMARY KEY (ticket_id)
);

CREATE TABLE actual_activitiy
(
  instructor_id INT NOT NULL,
  act_id INT NOT NULL,
  number_of_participants INT NOT NULL,
  act_date DATE NOT NULL,
  act_name VARCHAR NOT NULL,
  PRIMARY KEY (act_id),
  FOREIGN KEY (act_name) REFERENCES possible_activity(act_name)
);

CREATE TABLE participate
(
  ticket_id INT NOT NULL,
  act_id INT NOT NULL,
  PRIMARY KEY (ticket_id, act_id),
  FOREIGN KEY (ticket_id) REFERENCES visiter(ticket_id),
  FOREIGN KEY (act_id) REFERENCES actual_activitiy(act_id)
);