# Build stage (installs dependencies)
FROM python:3.9-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Final stage (slim image with application)
FROM python:3.9-slim
WORKDIR /app
COPY --from=builder /app/ .
COPY . .

# Expose port (if needed)
EXPOSE 8000

# Run command
CMD ["python", "main.py"]
