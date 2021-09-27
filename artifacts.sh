#!/bin/bash

echo "Deploying artifacts..."
curl -X POST -H "Content-type: application/json; artifactType=ASYNCAPI" -H "X-Registry-ArtifactId: streetlights-kafka" --data-binary "@./resources/streetlights.json" http://localhost:8080/api/artifacts
curl -X POST -H "Content-type: application/json; artifactType=ASYNCAPI" -H "X-Registry-ArtifactId: bbc-ably" --data-binary "@./resources/bbc-ably-api.json" http://localhost:8080/api/artifacts
curl -X POST -H "Content-type: application/json; artifactType=ASYNCAPI" -H "X-Registry-ArtifactId: ebay-api" --data-binary "@./resources/ebay-api.json" http://localhost:8080/api/artifacts
curl -X POST -H "Content-type: application/json; artifactType=ASYNCAPI" -H "X-Registry-ArtifactId: gitter-api" --data-binary "@./resources/gitter-api.json" http://localhost:8080/api/artifacts
curl -X POST -H "Content-type: application/json; artifactType=ASYNCAPI" -H "X-Registry-ArtifactId: open-weather-api" --data-binary "@./resources/open-weather-api.json" http://localhost:8080/api/artifacts
curl -X POST -H "Content-type: application/json; artifactType=ASYNCAPI" -H "X-Registry-ArtifactId: user-registration" --data-binary "@./resources/user-registration-api.json" http://localhost:8080/api/artifacts

echo "Deployment finished."
