# Use the Alpine base image
ARG PLATFORM=arm64
ARG BASE_IMG=alpine:3.20.3
FROM --platform=${PLATFORM} ${BASE_IMG}

# Install necessary dependencies
RUN apk update && \
    apk add python3 py3-pip

# Set the working directory
WORKDIR /bookstore

# Copy requirements.txt and install Python dependencies
COPY requirements.txt .
RUN python3 -m venv venv \
    && . venv/bin/activate \
    && pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose the application port
EXPOSE 5000

# Set environment variables for Flask
# ENV FLASK_APP=app.py
# ENV FLASK_ENV=development

# Run the Flask application
CMD ["sh", "-c", ". venv/bin/activate && python app.py"]
# CMD ["flask", "run", "--host=0.0.0.0"]