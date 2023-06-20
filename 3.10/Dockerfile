FROM ruby:3.2.2-alpine AS builder

# Update and install build dependencies
RUN apk update && \
    apk add --no-cache \
    build-base \
    postgresql-dev

WORKDIR /app

# Copy Gemfile
COPY Gemfile ./

# Install bundle
RUN bundle install

FROM ruby:3.2.2-alpine AS runner

# Update and install runtime dependencies
RUN apk update && \
    apk add --no-cache \
    tzdata \
    nodejs \
    postgresql-client

# Add non-root user for security
RUN addgroup -g 1000 appuser && \
    adduser -D -u 1000 -G appuser appuser

# Switch to non-root user
USER appuser

# Set the working directory
WORKDIR /app

# Copy over the gems from the builder stage
COPY --from=builder --chown=appuser:appuser /usr/local/bundle/ /usr/local/bundle/

# Copy over the rest of the application files
COPY --chown=appuser:appuser . .

# Expose port 3000 for the Rails server
EXPOSE 3000

# Set the command to start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
