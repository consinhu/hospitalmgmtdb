import random

def random_phone():
    return ''.join([str(random.randint(0, 9)) for _ in range(10)])

first_names = ["Jennifer", "Robert", "Alex", "Ryan", "Christina", "Brandon", "Sally", "Anthony", "Lillian", "Edward"]
last_names = ["White", "Robbins", "Harris", "Blake", "Walker", "Hart", "Whitlock", "Madden", "Smith", "Grace"]
specializations = ["Cardiology", "Oncology", "Radiology", "Pediatrics", "Orthopedics", "General Medicine", "Surgery", "Psychiatry", "Dermatology", "Neonatology", "Neurology"]
availability = [True, False]

output_file = "/Users/consinhu/insert_doctors.sql"
print(f"Generating SQL file: {output_file}")

try: 
    with open(output_file, "w") as file: 
        for i in range(50):
            first_name = random.choice(first_names)
            last_name = random.choice(last_names)
            specialization = random.choice(specializations)
            phone = random_phone()
            email = f"{first_name.lower()}.{last_name.lower()}{i}@hospital.com"
            is_available = random.choice(availability)

            sql = f"INSERT INTO Doctors (FirstName, LastName, Specializations, Phone, Email, Availability) " \
                  f"VALUES ('{first_name}', '{last_name}', '{specialization}', '{phone}', '{email}', {is_available});"

            print(sql)
            file.write(sql + "\n")
        
    print(f"SQL file successfully generated at: {output_file}")
except Exception as e: 
    print(f"Error: {e}")