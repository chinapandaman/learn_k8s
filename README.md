
# ✅ CKA Certification Checklist (Minikube Edition)

## 📁 1. Cluster Architecture
- [ ] Understand control plane components (`kube-apiserver`, `kube-controller-manager`, `scheduler`, `etcd`)
- [ ] Identify node components (`kubelet`, `kube-proxy`, container runtime)
- [ ] Inspect components with `kubectl get componentstatuses`
- [ ] SSH into Minikube and inspect kube processes (`minikube ssh`, `ps aux | grep kube`)
- [ ] Use `kubectl describe node` to understand node roles and status

---

## 🔐 2. Security
- [ ] Create and use ServiceAccounts
- [ ] Create Roles and RoleBindings
- [ ] Create ClusterRoles and ClusterRoleBindings
- [ ] Create and mount Secrets into Pods
- [ ] Encode/decode secrets with `base64`
- [ ] Use ConfigMaps in Pods
- [ ] Set resource limits on users with RBAC
- [ ] Set up Minikube with CNI (e.g. `minikube start --cni=calico`)
- [ ] Create and test simple NetworkPolicies

---

## ⚙️ 3. Workloads & Scheduling
- [ ] Create and update Deployments
- [ ] Perform a rolling update and rollback on a Deployment
- [ ] Use `kubectl set image`, `kubectl rollout`
- [ ] Create and manage Pods directly from YAML
- [ ] Use NodeSelectors to constrain Pod placement
- [ ] Apply Taints and Tolerations to control scheduling
- [ ] Use Affinity and Anti-Affinity rules
- [ ] Create and manage Jobs
- [ ] Create and manage CronJobs
- [ ] Create and manage DaemonSets
- [ ] Use probes (liveness, readiness, startup)

---

## 📦 4. Services & Networking
- [ ] Create ClusterIP, NodePort Services
- [ ] Use `minikube service` to access NodePorts
- [ ] Use `kubectl port-forward` for port exposure
- [ ] Validate service DNS with `nslookup` or `dig`
- [ ] Create and test simple Ingress (with Ingress addon or NGINX)
- [ ] Apply NetworkPolicies (Calico or another CNI required)
- [ ] Test network connectivity between Pods

---

## 💾 5. Storage
- [ ] Use `emptyDir` volumes
- [ ] Use `hostPath` volumes (works in Minikube)
- [ ] Create and bind a PersistentVolume (PV)
- [ ] Create and bind a PersistentVolumeClaim (PVC)
- [ ] Use PVC in a Pod spec
- [ ] Understand StorageClasses (Minikube supports `standard` by default)
- [ ] Resize PVC (if supported)
- [ ] Delete and recycle PVs/PVCs

---

## 🧪 6. Troubleshooting
- [ ] Use `kubectl logs`, `kubectl describe` to debug Pods
- [ ] Identify Pod status (CrashLoopBackOff, Pending, etc.)
- [ ] Debug failed containers with `kubectl exec`
- [ ] Use `kubectl run` to start test/debug Pods (e.g., `busybox`, `nginx`)
- [ ] Test Pod-to-Pod and Pod-to-Service communication
- [ ] Use ephemeral containers for debugging (K8s >= 1.23; optional in Minikube)
- [ ] Check node conditions and capacity
- [ ] View events: `kubectl get events --sort-by='.metadata.creationTimestamp'`

---

## 🛡️ Bonus (Recommended)
- [ ] Practice YAML editing quickly in `vi` or `nano`
- [ ] Bookmark key Kubernetes docs in browser
- [ ] Use `kubectl explain` to explore API resources
- [ ] Use `kubectl get all`, `kubectl api-resources`, `kubectl api-versions`
- [ ] Know how to use `--dry-run=client -o yaml` to generate manifests
- [ ] Use `kubens` and `kubectx` if using multiple namespaces
