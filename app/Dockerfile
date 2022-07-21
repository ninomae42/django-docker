# Pull official base image
FROM python:3.9.6-alpine

# Set work directory
WORKDIR /usr/src/app

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install psycopg dependencies
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

# Install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy entrypoint.sh
COPY ./entrypoint.sh .
RUN sed -i 's/\r$//g' /usr/src/app/entrypoint.sh
RUN chmod +x /usr/src/app/entrypoint.sh

# Copy project files
COPY . .

# Run entrypoint.sh
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
