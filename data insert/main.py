import random
import pandas
import datetime

def create_data_pos_acts(num):
    with open('insert_pos_acts_Data.csv','w') as SQL_file:
        counter = 1
        maxi = 0
        for i in range(1,num+1):
            name_of_activity = str(i)
            cost_of_arranging =random.randrange(1,11)*50
            cost_of_Participation = random.randrange(0,6)*10
            max_number_of_participants =random.randrange(1,5)*5
            act_acts_to_create =random.randrange(0,21)
            create_data_act_acts(act_acts_to_create,name_of_activity,max_number_of_participants,counter,maxi)
            counter += act_acts_to_create+1
            maxi += act_acts_to_create*max_number_of_participants
            SQL_file.write( name_of_activity + ","
                           + str(cost_of_arranging) + ","
                           + str(cost_of_Participation) + ","
                           + str(max_number_of_participants) + " \n" )
        create_data_visit(random.randrange(40000,80000), maxi)

def create_data_act_acts(num,name,max,act_counter,maxi):
    with open('insert_act_acts_Data.csv','a') as SQL_file:
        ticket_counter = 1 + maxi
        for i in range(num+1):
            name_of_activity = name
            act_id =i+act_counter
            instructor_id = random.randrange(1,20000)
            start_date = datetime.date(2015, 1, 1)
            end_date = datetime.date(2020, 1, 1)
            time_between_dates = end_date - start_date
            days_between_dates = time_between_dates.days
            random_number_of_days = random.randrange(days_between_dates)
            date_of_act = start_date + datetime.timedelta(days=random_number_of_days)
            number_of_participants = random.randrange(1,max+1)
            create_data_participate(number_of_participants,date_of_act,act_id,ticket_counter)
            ticket_counter += number_of_participants+1
            SQL_file.write(name_of_activity + ","
                           + str(act_id) + ","
                           + str(instructor_id) + ","
                           + str(date_of_act) + ","
                           + str(number_of_participants) + " \n" )

def create_data_participate(num,date,act_id,ticket_counter):
    with open('insert_participate_Data.csv','a') as SQL_file:
        activity_id = act_id
        for i in range(num+1):
            ticket_id = ticket_counter + i
            age = random.randrange(7, 120)
            id_number = random.randrange(1, 100000)
            with open('insert_visit_Data.csv', 'a') as SQL_file2:
                SQL_file2.write(str(ticket_id) + ","
                                + str(date) + ","
                                + str(age) + "\n")
            SQL_file.write(str(activity_id) + ","
                           + str(ticket_id) + " \n")

def create_data_visit(num,maxi):
    with open('insert_visit_Data.csv', 'a') as SQL_file2:

        for i in range(num+1):
            start_date = datetime.date(2015, 1, 1)
            end_date = datetime.date(2020, 1, 1)
            time_between_dates = end_date - start_date
            days_between_dates = time_between_dates.days
            random_number_of_days = random.randrange(days_between_dates)
            date = start_date + datetime.timedelta(days=random_number_of_days)
            age = random.randrange(7,120)
            id_number = random.randrange(1,100000)
            ticket_id = maxi+i
            SQL_file2.write(str(ticket_id) + ","
                            + str(date) +","
                            + str(age) + "\n")

create_data_pos_acts(400)
