helm upgrade --install --atomic `
    --set agent.acceptEula="Y" `
    --set agent.targetName="Local Kubernetes Agent 5" `
    --set agent.serverUrl="https://zerotohero.octopus.app/" `
    --set agent.serverCommsAddress="https://polling.zerotohero.octopus.app/" `
    --set agent.space="Adam" `
    --set agent.targetEnvironments="{development,test,production}" `
    --set agent.targetRoles="{zerotohero-frontend}" `
    --set agent.bearerToken="eyJhbGciOiJQUzI1NiIsImtpZCI6ImYxZThmOTVlZWU2MzRkYWFiNWJlNmVjOTFmNjkwYzhmIiwidHlwIjoiSldUIn0.eyJzdWIiOiIzM2E2YjkzOS05MmU4LTQzMjMtYWI4OS0xMjkzNDczOGJjMGEiLCJqdGkiOiI0MjRjOTRkODA3ZGI0N2ViYTg2OGNhYWRkOTJiMDY2ZCIsImF1ZCI6Imh0dHBzOi8vemVyb3RvaGVyby5vY3RvcHVzLmFwcCIsImV4cCI6MTcxODA5ODEzOCwiaXNzIjoiaHR0cHM6Ly96ZXJvdG9oZXJvLm9jdG9wdXMuYXBwIiwiaWF0IjoxNzE4MDk0NTM4LCJuYmYiOjE3MTgwOTQ1Mzh9.g83RBNN4YRKmUtdMj-a3cLC1TlwwtlCRZGy_gXMflRiLwxNNrXh97-gXGPN9P9v_lsGlE5-W9YXOCwzi2EF_NW6Afku2aQHeb7PcXqCp588AiDK6_z_MDJi1USqGDFYvDCyyN8Xu2r-hp7RRTddJEza2oJH3Tt-JOvI-3o_pHMZX0cjmHVmGvM4xxwI4C_6RyK7Hk0wnpEfdr_Tjvn3wUMb9AsZB1rffcvXxtbvOJYS44nKrTj-9n8ltPoLuMT14zO-T9t88-n3Lz4_WDaEQ0AWLfzKsia6kxo4pSGtvIlLu-6_tFCc6I8Ibu-J1BxmLZE7cfpXCSfwblIrl4aaSqA" `
    --version "1.*.*" `
    --create-namespace --namespace octopus-agent-localkubernetesagent5 `
    localkubernetesagent5 `
    oci://registry-1.docker.io/octopusdeploy/kubernetes-agent