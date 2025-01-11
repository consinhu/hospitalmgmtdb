import random
from datetime import datetime, timedelta


diagnoses = ["Hypertension", "Diabetes", "Common Cold", "Fracture", "Migraine", "Anxiety", "Asthma", "Infection", "Depressive Disorder", "Acute Respiratory Infections", "Joint Disorders", "Glaucoma", "Cardiac dysrhythmias", "Allergic rhinitis", "Acute Pharyngitis", "Conditions of the spine and back", "Osteoarthritis"]
treatments = ["Antibiotics", "Therapy", "Surgery", "Lifestyle Changes", "Physiotherapy", "Topical Ointments", "Antifungal medications", "Antihistamines", "Blood Transfusion", "Vaccine"]
prescriptions = ["Paracetamol", "Ibuprofen", "Metformin", "Amlodipine", "Pain relievers", "Hydrocodone/Acetaminophen", "Albuterol", "Levothyroxine"]

def random_date(start, end):
    return start + timedelta(days=random.randint(0, (end - start).days))

output_file = "/Users/consinhu/insert_medical_records.sql"
print(f"Generating SQL file: {output_file}")

try: 
    with open(output_file, "w") as file:
        start_date = datetime(2023, 1, 1)
        end_date = datetime(2024, 12, 31)

        for i in range(100):
            patient_id = random.randint(1, 100)
            doctor_id = random.randint(1, 50)
            diagnosis = random.choice(diagnoses)
            treatment = random.choice(treatments)
            prescription = random.choice(prescriptions)
            record_date = random_date(start_date, end_date).strftime('%Y-%m-%d')

            sql = f"INSERT INTO MedicalRecords (PatientID, DoctorID, Diagnosis, Treatment, Prescription, Date) " \
                  f"VALUES ({patient_id}, {doctor_id}, '{diagnosis}', '{treatment}', '{prescription}', '{record_date}');"


            print(sql)
            file.write(sql + "\n")

    print(f"SQL file successfully generated at: {output_file}")
except Exception as e: 
    print(f"Error: {e}")