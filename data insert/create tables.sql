CREATE TABLE possible_activity
(
  act_name VARCHAR(100) NOT NULL,
  cost_of_arranging INT NOT NULL,
  cost_of_Participation INT NOT NULL,
  max_number_of_participants INT NOT NULL,
  PRIMARY KEY (act_name)
);

CREATE TABLE visiter
(
  ticket_id INT NOT NULL,
  visit_date DATE NOT NULL,
  PRIMARY KEY (ticket_id)
);

CREATE TABLE actual_activitiy
(
  act_name VARCHAR(100) NOT NULL, 
  activity_id INT NOT NULL,
  instructor_id INT NOT NULL,
  activity_date DATE NOT NULL,
  number_of_participants INT NOT NULL,
  PRIMARY KEY (activity_id),
  FOREIGN KEY (act_name) REFERENCES possible_activity(act_name)
);

CREATE TABLE participate
(
  activity_id INT NOT NULL,
  ticket_id INT NOT NULL,
  PRIMARY KEY (ticket_id, activity_id),
  FOREIGN KEY (ticket_id) REFERENCES visiter(ticket_id),
  FOREIGN KEY (activity_id) REFERENCES actual_activitiy(activity_id)
);
