#!/bin/bash
oc login --insecure-skip-tls-verify --username="${OPENSHIFT_USERNAME}" --password="${OPENSHIFT_PASSWORD}" ${OPENSHIFT_URL} 
oc project o2
oadm prune images --verify=true
