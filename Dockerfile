FROM golang:1.14-alpine as builder

WORKDIR /root

# Copy the source code to workspace.
COPY . .

# Build executable
RUN CGO_ENABLED=0 go build -ldflags "-s -w" -gcflags=all=-l -o /build/kvstore

# Release image
FROM scratch

COPY --from=builder /build .

ENTRYPOINT ["./kvstore"]