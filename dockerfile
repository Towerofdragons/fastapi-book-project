# Use an official lightweight Python image as the base
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /fastapi-book-project

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && pip install -r requirements.txt

# Copy the application files
COPY . .

# Expose the required port
EXPOSE 8000

# Set the FastAPI entry point
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
