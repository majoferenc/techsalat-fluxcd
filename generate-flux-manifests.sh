#!/bin/bash

flux create helmrelease demoapp-develop \
    --source GitRepository/helm-charts \
    --chart "demoapp" \
    --target-namespace develop \
    --interval 1m \
    --reconcile-strategy ChartVersion \
    --chart-interval 1m \
    --release-name demoapp-develop \
    --export \
    --timeout=1m > clusters/my-cluster/apps/develop/demoapp.yaml
