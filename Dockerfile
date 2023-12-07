# Brug en baseimage med Python
FROM python:3.8-slim

# Opret og skift til arbejdsmappe
WORKDIR /app

# Kopier krævede filer og installer afhængigheder
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopier resten af applikationen
COPY . .

# Indstil miljøvariabler
ENV FLASK_APP=your_flask_app.py

# Udsæt den nødvendige port
EXPOSE 5000

# Kommando til at køre applikationen
CMD ["flask", "run", "--host=0.0.0.0"]
