FROM mcr.microsoft.com/devcontainers/go:${templateOption:imageVariant}

# (OPTIONAL) Install additional tools that are not available as devcontainer features
# Example installing redis and mysql tools:
# RUN apt-get update && apt-get install -y \
#     default-mysql-client \
#     redis-tools \
#     && rm -rf /var/lib/apt/lists/*

# (OPTIONAL) Install some go-specific tools according to your needs
# Example installing golangci-lint and gotestsum:
# RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.55.2 \
#     && go install gotest.tools/gotestsum@v1.11.0

# Add permissions for Go module cache and sumdb
RUN mkdir -p /go/pkg/mod && \
    mkdir -p /go/pkg/sumdb && \
    chmod -R 777 /go/pkg

# Set Go environment variables as per needs
ENV GOMODCACHE=/go/pkg/mod
ENV GOSUMDB=sum.golang.org
ENV GOPROXY=https://proxy.golang.org,direct

# Switch to non-root user
USER vscode