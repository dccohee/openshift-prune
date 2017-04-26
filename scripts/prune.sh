#!/bin/bash
echo oc login ${OPENSHIFT_URL} --username=${OPENSHIFT_USERNAME} --password=${OPENSHIFT_PASSWORD}
oc login ${OPENSHIFT_URL} --username="${OPENSHIFT_USERNAME}" --password="${OPENSHIFT_PASSWORD}"
