import random
import datetime

def random_date(start, end):
    return start + datetime.timedelta(days=random.randint(0, (end - start).days))

def random_phone():
    return ''.join([str(random.randint(0, 9)) for _ in range(10)])

first_names = ["John", "Joan", "Allen", "Gregor", "Alice", "William", "Delia", "Maxine", "Lauren", "Frederik", "Adam", "Emily", "Sarah", "Paul"]
last_names = ["Smith", "Day", "Peck", "Wild", "Anderson", "Davis", "Miller", "Taylor", "Garcia", "Ramirez", "Grey", "Brown", "Vega", "Johnson"]
genders = ["Male", "Female", "Other"]

start_date = datetime.date(1940, 1, 1)
end_date = datetime.date(2024, 1, 1)

with open("insert_patients.sql", "w") as file:
    print("Generating insert_pateints.sql file. . .")
    for i in range(100):
        first_name = random.choice(first_names)
        last_name = random.choice(last_names)
        dob = random_date(start_date, end_date)
        gender = random.choice(genders)
        phone = random_phone()
        email = f"{first_name.lower()}{i}@example.com"
        address = f"{random.randint(100, 999)} Random St"

        sql = f"INSERT INTO Patients (FirstName, LastName, DOB, Gender, Phone, Email, Address) " \
              f"VALUES ('{first_name}', '{last_name}', '{dob}', '{gender}', '{phone}', '{email}', '{address}');\n"
        file.write(sql)