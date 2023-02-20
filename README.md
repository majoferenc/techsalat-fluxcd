# techsalat-fluxcd
Demo repository with basic Flux setup

## Check git sources
flux get sources git

## Check Helm releases
flux get hr

## Stop HelmRelease
  
  flux suspend hr demoapp-develop

## Reconcile HelmRelease
  
  flux reconcile hr demoapp-develop

## Resume HelmRelease

  flux resume hr demoapp-develop
