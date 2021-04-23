FROM python:3

# Set application working directory
WORKDIR /usr/src/app
# Install requirements
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# Install application
COPY app.py ./
RUN python app_test.py
# Run application
ENTRYPOINT ["python", "app_test.py"]
CMD python app.py
