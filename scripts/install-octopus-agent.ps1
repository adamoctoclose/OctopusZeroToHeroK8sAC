helm upgrade --install --atomic `
    --set agent.acceptEula="Y" `
    --set agent.targetName="local Kubernetes agent setup 3" `
    --set agent.serverUrl="https://zerotohero.octopus.app/" `
    --set agent.serverCommsAddress="https://polling.zerotohero.octopus.app/" `
    --set agent.space="Adam" `
    --set agent.targetEnvironments="{development,test,production}" `
    --set agent.targetRoles="{zerotohero-frontend}" `
    --set agent.bearerToken="eyJhbGciOiJQUzI1NiIsImtpZCI6ImYxZThmOTVlZWU2MzRkYWFiNWJlNmVjOTFmNjkwYzhmIiwidHlwIjoiSldUIn0.eyJzdWIiOiIzM2E2YjkzOS05MmU4LTQzMjMtYWI4OS0xMjkzNDczOGJjMGEiLCJqdGkiOiJhMjI1Yjg3YmUzMWY0NzRlYTUyNGY3YWZkMWE4N2E4YSIsImF1ZCI6Imh0dHBzOi8vemVyb3RvaGVyby5vY3RvcHVzLmFwcCIsImV4cCI6MTcxODA4NzQ3OCwiaXNzIjoiaHR0cHM6Ly96ZXJvdG9oZXJvLm9jdG9wdXMuYXBwIiwiaWF0IjoxNzE4MDgzODc4LCJuYmYiOjE3MTgwODM4Nzh9.Oo20fHeN5x_k81mtalyYzTfw5bZmdpB0Fhcj844gLfNaqs4rSEFwmVyrSkEg9bV3gjjEFRQwz97JxiJ49AwnImKSw9Y1iQaXAMOisoVM2cj-bxKDnJc-JI3z3IYQwclxm0v7nh_-Vn6mOmDlDlPGIFKqsQb2vbV8otb77Z1ZgirvWHmeNNZ_Dc8UddcY9QV3mcKRBHD-jjzGW4funbrTKC-ZZS-8Qk61abeha0LdjZUQ_Fpc2iE8XKL7acrJn8tYKUfZggNi0bWI1kz5YDCCnzmua85bbBsNhbgR2v4nbvk92cfjehFmQQq7wnxuCKJwopSFDATNWXUAMFeqP-N6gA" `
    --version "1.*.*" `
    --create-namespace --namespace octopus-agent-localkubernetesagentsetup3 `
    localkubernetesagentsetup3 `
    oci://registry-1.docker.io/octopusdeploy/kubernetes-agent