import random
from datetime import datetime, timedelta

def random_date(start,end): 
    return start + timedelta(days=random.randint(0, (end - start).days))

def random_time(): 
    return f"{random.randint(8, 17)}:{random.randint(0, 59):02d}:00"

statuses = ["Scheduled", "In Progress", "Completed", "Cancelled"]

output_file = "/Users/consinhu/insert_appointments.sql"

try: 
    with open(output_file, "w") as file:
        start_date = datetime(2023, 1, 1)
        end_date = datetime(2024, 12, 31)

        for i in range(40):
            patient_id = random.randint(1, 100)
            doctor_id = random.randint(1, 50)
            appointment_date = random_date(start_date, end_date).strftime('%Y-%m-%d')
            appointment_time = random_time()
            status = random.choice(statuses)

            sql = f"INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status) " \
                  f"VALUES ({patient_id}, {doctor_id}, '{appointment_date}', '{appointment_time}', '{status}');"

            print(sql)
            file.write(sql +"\n")
    
    print(f"SQL file successfully generated at: {output_file}")
except Exception as e: 
    print(f"Error: {e}")
