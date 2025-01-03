
# Go Development Toolkit (go-toolkit)

This is a devcontainer template for some of the typical stacks used in Go development such as MySQL, Redis, Kafka, etc.

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| imageVariant | Go version to use: | string | 1.23 |

# Go Development Toolkit

This template provides a comprehensive development environment for Go applications with commonly used tech stacks and tools. The environment is fully containerized using Docker and includes various development tools and services.

## Available Tools and Features

Below are the default tools and features included in this template:

### Devcontainer Features

- Go development environment
- Docker and Docker Compose support
- Git with enhanced features
- Protobuf compiler and tools
- jq and yq for JSON/YAML processing
- Zsh with useful plugins (git, docker, docker-compose, kubectl, golang, autosuggestions, syntax-highlighting)
- Kcat for Kafka command-line tools

### Included Services

- MySQL database
- Redis cache
- Apache Kafka with Zookeeper
- LocalStack for AWS service emulation

### Development UI Tools

- Adminer (MySQL management) - Port 8080
- Kafdrop (Kafka management) - Port 9000
- RedisInsight (Redis management) - Port 8001

### VS Code Extensions

- Go extension for Go development
- Docker extension for container management
- AI assistants (GitHub Copilot, Continue, Claude)
- Git tools (GitLens)
- YAML and environment support
- Theme and UI enhancements

## Environment Configuration

### Database Configuration

- MySQL:
  - Host: mysql
  - Port: 3306
  - Default Database: myapp
  - Default User: myapp

### Cache Configuration

- Redis:
  - Host: redis
  - Port: 6379

### Message Queue Configuration

- Kafka:
  - Broker: kafka:29092
  - Zookeeper: zookeeper:2181

### LocalStack (AWS) Configuration

- Endpoint: http://localstack:4566
- Region: us-east-1
- Access Key: test
- Secret Key: test

## Customization

This template provides a starting point with commonly used tools and services. You can customize it by:

1. Modifying the `.devcontainer/devcontainer.json` to:
   - Add/remove VS Code extensions
   - Enable/disable features
   - Adjust container settings

2. Updating `.devcontainer/docker-compose.yml` to:
   - Add/remove services
   - Change service versions
   - Modify environment variables
   - Adjust port mappings


---

_Note: This file was auto-generated from the [devcontainer-template.json](https://github.com/irfansofyana/devcontainer-templates/blob/main/src/go-toolkit/devcontainer-template.json).  Add additional notes to a `NOTES.md`._
