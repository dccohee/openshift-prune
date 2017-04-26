#!/bin/bash
oc login --insecure-skip-tls-verify --username="${OPENSHIFT_USERNAME}" --password="${OPENSHIFT_PASSWORD}" ${OPENSHIFT_URL} 
oc project o2
oadm prune images --confirm=true
oadm prune builds --confirm=true
oadm prune deployments --confirm=true

oc project omar-rel
oadm prune images --confirm=true
oadm prune builds --confirm=true
oadm prune deployments --confirm=true

oc project omar-dev
oadm prune images --confirm=true
oadm prune builds --confirm=true
oadm prune deployments --confirm=true
