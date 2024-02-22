#!/bin/bash

# Start the server using uvicorn runner
uvicorn http_server:app --host 0.0.0.0 --port 8080
