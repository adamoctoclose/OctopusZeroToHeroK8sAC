helm upgrade --install --atomic `
    --set agent.acceptEula="Y" `
    --set agent.targetName="Local Kubernetes Agent Setup" `
    --set agent.serverUrl="https://zerotohero.octopus.app/" `
    --set agent.serverCommsAddress="https://polling.zerotohero.octopus.app/" `
    --set agent.space="Zero To Hero" `
    --set agent.targetEnvironments="{development,test,production}" `
    --set agent.targetRoles="{zerotohero-frontend}" `
    --set agent.bearerToken="eyJhbGciOiJQUzI1NiIsImtpZCI6ImYxZThmOTVlZWU2MzRkYWFiNWJlNmVjOTFmNjkwYzhmIiwidHlwIjoiSldUIn0.eyJzdWIiOiIzM2E2YjkzOS05MmU4LTQzMjMtYWI4OS0xMjkzNDczOGJjMGEiLCJqdGkiOiJiZDQzZDMxNjNmZGM0NzkwYmU1Yzg5YmZlMTJhNGQ1OCIsImF1ZCI6Imh0dHBzOi8vemVyb3RvaGVyby5vY3RvcHVzLmFwcCIsImV4cCI6MTcxODA1ODY2NSwiaXNzIjoiaHR0cHM6Ly96ZXJvdG9oZXJvLm9jdG9wdXMuYXBwIiwiaWF0IjoxNzE4MDU1MDY1LCJuYmYiOjE3MTgwNTUwNjV9.UZi7CcEPzInT0pOGW-CLwrkm8Ei1fPBJvgB1oWLGBBYtz0efqlLmCWniVsZP5HQlpC-1zSF73TBVgbXdL1e-IbV_gMIoHyCC5hosH9Yaev_JGZVQXXOU0G4Yjpa4trdJF01D9q0jhODUS63xRyJcQXjui3h6EpffD9zUlvvzS4EAdTuRKXBENJ9M0BcrWwnLWBwYGrLr5uaVJ2oILK1uhZqX-tmg5HtkzVFL5CRAoMwUeQIsgz9ffUgH3sa4K3MeYZXwsFOrv8mZX06RS4TFs0OCTSEGdwiGvgDP70jXBLSZMcwSeadMyilPgQa43G0CchzXz8eufaMwWEib1QEpHA" `
    --version "1.*.*" `
    --create-namespace --namespace octopus-agent-localkubernetesagentsetup `
    localkubernetesagentsetup `
    oci://registry-1.docker.io/octopusdeploy/kubernetes-agent