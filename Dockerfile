FROM python:3.11

# Set working directory in container
WORKDIR /app

# Copy current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Train the model during the build phase
RUN python train.py

# Command to run the test script when the container is run
CMD ["python", "test.py"]