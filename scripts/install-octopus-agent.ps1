helm upgrade --install --atomic `
    --set agent.acceptEula="Y" `
    --set agent.targetName="Local Kubernetes Agent 5" `
    --set agent.serverUrl="https://zerotohero.octopus.app/" `
    --set agent.serverCommsAddress="https://polling.zerotohero.octopus.app/" `
    --set agent.space="Adam" `
    --set agent.targetEnvironments="{development,test,production}" `
    --set agent.targetRoles="{zerotohero-frontend}" `
    --set agent.bearerToken="" `
    --version "1.*.*" `
    --create-namespace --namespace octopus-agent-localkubernetesagent5 `
    localkubernetesagent5 `
    oci://registry-1.docker.io/octopusdeploy/kubernetes-agent
