helm upgrade --install --atomic `
    --set agent.acceptEula="Y" `
    --set agent.targetName="Local Kubernetes Setup 2" `
    --set agent.serverUrl="https://zerotohero.octopus.app/" `
    --set agent.serverCommsAddress="https://polling.zerotohero.octopus.app/" `
    --set agent.space="Zero To Hero" `
    --set agent.targetEnvironments="{development,test,production}" `
    --set agent.targetRoles="{zerotohero-frontend}" `
    --set agent.bearerToken="eyJhbGciOiJQUzI1NiIsImtpZCI6ImYxZThmOTVlZWU2MzRkYWFiNWJlNmVjOTFmNjkwYzhmIiwidHlwIjoiSldUIn0.eyJzdWIiOiIzM2E2YjkzOS05MmU4LTQzMjMtYWI4OS0xMjkzNDczOGJjMGEiLCJqdGkiOiIxMWMwYjUzZGJiMDE0NTY5OTYzNTA1MmMwM2I0NjY5NiIsImF1ZCI6Imh0dHBzOi8vemVyb3RvaGVyby5vY3RvcHVzLmFwcCIsImV4cCI6MTcxODA4NTQwOCwiaXNzIjoiaHR0cHM6Ly96ZXJvdG9oZXJvLm9jdG9wdXMuYXBwIiwiaWF0IjoxNzE4MDgxODA4LCJuYmYiOjE3MTgwODE4MDh9.4pEFdTn1wCPbvox-oslyM8BTElbG36P4hTH-Ws3NuLGOFznWEpupmHU_E0IhKzGNZqyZCzShwSVSjMjRhhJ_AJt4ya9S-u29XWb_qL4AB_IUouRpO51N3j2A-NiT0ZMLsNnlc3nBsNCKULG1ltNRpCQtPhgaZkzJAjVcynFc9Fgfwph3BS23-0qgygi1rGpai31_h2VYkxT0zl1gXW4DdK0YGH1-yH6tl2dtzwBMZA4xZi9_DitMrZLszduT4aXnMfBIp_U_ZjbdzzlugaivHB7A-V_V71MudzGFJTZn0kIx3emS_28Ut7LsSUqvEDGEp2W0WhBE6uMHoyhS7P5SFw" `
    --version "1.*.*" `
    --create-namespace --namespace octopus-agent-localkubernetessetup2 `
    localkubernetessetup2 `
    oci://registry-1.docker.io/octopusdeploy/kubernetes-agent