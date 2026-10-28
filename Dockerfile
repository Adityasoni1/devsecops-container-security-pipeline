# Use Python on top of Alpine Linux (lightweight and secure)
FROM python:3.12-alpine

# Create a non-privileged user (enforces least-privilege security)
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /app

# Copy application script
COPY app.py /app/

# Switch from root to non-root user
USER appuser

EXPOSE 8080

CMD ["python", "app.py"]

