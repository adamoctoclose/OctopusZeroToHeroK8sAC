helm upgrade --install --atomic `
    --repo https://raw.githubusercontent.com/kubernetes-csi/csi-driver-nfs/master/charts `
    --namespace kube-system `
    --version v4.6.0 `
    csi-driver-nfs `
    csi-driver-nfs