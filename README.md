# Cleanup pods in K8s cluster with 'Failed' or 'Unknown' statuses

## Overview

The `k8s-cleanup-pods` script deletes all pods in the given namespace that has the status of `Failed` or `Unknown`.  
To learn more about pod statuses in Kubernetes, see [Pod phase](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#pod-phase).

> **IMPORTANT**. Use script only in **non-prod environments**, as deleting pods can leave you without any logs and debugging information. The main purpose of the script is to free up the ephemeral storage in the cluster, as even `Failed` and in general `Terminated` pods take up the space in the cluster.

To use the script:
```bash
k8s-cleanup-pods [namespace]
```

To get help information use `--help` argument.

To install the script:
```bash
chmod +x k8s-cleanup-pods
sudo mv k8s-cleanup-pods /usr/local/bin/
```

## Use cases
1. You can use the script in CI/CD pipeline as part of cleanup job
2. Use script in scheduled CronJob to run it regularly in the cluster