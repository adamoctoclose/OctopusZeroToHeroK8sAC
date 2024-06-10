helm upgrade --install --atomic `
    --set agent.acceptEula="Y" `
    --set agent.targetName="Demo Kubernetes Target" `
    --set agent.serverUrl="https://adamclose.octopus.app/" `
    --set agent.serverCommsAddress="https://polling.adamclose.octopus.app/" `
    --set agent.space="ZeroToHero" `
    --set agent.targetEnvironments="{development,test,production}" `
    --set agent.targetRoles="{zeroToHero}" `
    --set agent.bearerToken="eyJhbGciOiJQUzI1NiIsImtpZCI6ImEwZTI5OTM2ZmZlMzRkY2JhZDViNWVhMDgwZTM5NmI0IiwidHlwIjoiSldUIn0.eyJzdWIiOiI3OGE3YmQzMS03YmQxLTQyYWItOGZmNi01MGYxMTc1Yzc4M2IiLCJqdGkiOiJkZGI3MmYwYjcxYTM0NjIwYTk3N2UyZjU1MDcyMWZlYSIsImF1ZCI6Imh0dHBzOi8vYWRhbWNsb3NlLm9jdG9wdXMuYXBwIiwiZXhwIjoxNzE4MDEzNDEyLCJpc3MiOiJodHRwczovL2FkYW1jbG9zZS5vY3RvcHVzLmFwcCIsImlhdCI6MTcxODAwOTgxMiwibmJmIjoxNzE4MDA5ODEyfQ.DgJs7mn_GhF6JZ4f9T-1DAIFseeDMzBVY-TV7Tn_Q-bj1gM8V2QDaBN3WFmO-nvqBriI0kxBGC08-XzoqiTGtSV-iCAAgVbx1f9lOWfKJH9__XUEVyTfxsqP6L-ODr7UYWFs9yUQh7YOh04u_9LnVdS0XYEBHubNPjA661IuKVjLwJncQjHi0ePps5DCwSMnCSlcw3kQ83fRSZk-L7iHH6_AHGKG9p-JhsBYmLasRbmMaeH676BDaiLzhHPPP69dUg5re7rgNujrO79aj0IUACNHZ8zm4674Uqhee4wqZeTkZxwwfVBJt3bOFvOUdY4VAcPROezA6krN4f3CYBsSMw" `
    --version "1.*.*" `
    --create-namespace --namespace octopus-agent-demokubernetestarget `
    demokubernetestarget `
    oci://registry-1.docker.io/octopusdeploy/kubernetes-agent