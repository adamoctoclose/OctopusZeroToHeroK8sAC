helm upgrade --install --atomic `
    --set agent.acceptEula="Y" `
    --set agent.targetName="Local Laptop Docker Desktop" `
    --set agent.serverUrl="https://zerotohero.octopus.app/" `
    --set agent.serverCommsAddress="https://polling.zerotohero.octopus.app/" `
    --set agent.space="Default" `
    --set agent.targetEnvironments="{development,test,production}" `
    --set agent.targetRoles="{demo}" `
    --set agent.bearerToken="eyJhbGciOiJQUzI1NiIsImtpZCI6ImYxZThmOTVlZWU2MzRkYWFiNWJlNmVjOTFmNjkwYzhmIiwidHlwIjoiSldUIn0.eyJzdWIiOiIzM2E2YjkzOS05MmU4LTQzMjMtYWI4OS0xMjkzNDczOGJjMGEiLCJqdGkiOiJiNTFlYzM2ZDI3ZWE0ZWNjYWZmMGIwMGI4Y2U5MDZkMSIsImF1ZCI6Imh0dHBzOi8vemVyb3RvaGVyby5vY3RvcHVzLmFwcCIsImV4cCI6MTcxNzk0MjMzMCwiaXNzIjoiaHR0cHM6Ly96ZXJvdG9oZXJvLm9jdG9wdXMuYXBwIiwiaWF0IjoxNzE3OTM4NzMwLCJuYmYiOjE3MTc5Mzg3MzB9.SPxcAJ-ZDR1egAUwJjAg0CqALTJXtjhXlHmjK6f032Tf_iDRy-E03vHwjYTE11nBdtCa6l9FMYXlXdYpRItD2h20QpV6BmxqQyqK9oQtmVsAqYaW_K7AdycTD2wSNk16FguVmpsLEhPMb3WwMMSHfOdeup0YSxZKz_BtW6K735pMGY3Uwuo5sLXHBG4qN7MP_hcChphBdgy56rx3BfuNpRne4OaKwNsTScsXwDlBoxepUumWznoKW_U8esS9MK4NkUkM3PUhlArZLqeYQr5QcOZj46UsY0N0vp1uqXp7GCgc83xgr9KyABJ0m2gDLx2WTRB00QOjMX-aHnN7QU1DAg" `
    --version "1.*.*" `
    --create-namespace --namespace octopus-agent-locallaptopdockerdesktop `
    locallaptopdockerdesktop `
    oci://registry-1.docker.io/octopusdeploy/kubernetes-agent