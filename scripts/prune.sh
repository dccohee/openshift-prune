#!/bin/bash
oc login --insecure-skip-tls-verify --username="${OPENSHIFT_USERNAME}" --password="${OPENSHIFT_PASSWORD}" ${OPENSHIFT_URL} 
if [ $? != 0 ] ; then 
   echo "Unable to login to openshift server"
   exit 1
fi
oc project o2
if [ $? != 0 ] ; then 
   echo "Unable to change to project o2"
   exit 1
fi

oadm prune images --confirm=true
if [ $? != 0 ] ; then 
   echo "Unable to prune images on project o2"
   exit 1
fi
oadm prune builds --confirm=true
if [ $? != 0 ] ; then 
   echo "Unable to prune builds on project o2"
   exit 1
fi
oadm prune deployments --confirm=true
if [ $? != 0 ] ; then 
   echo "Unable to prune deployments on project o2"
   exit 1
fi

oc project omar-rel
if [ $? != 0 ] ; then 
   echo "Unable to change to project omar-rel"
   exit 1
fi
oadm prune images --confirm=true
if [ $? != 0 ] ; then 
   echo "Unable to prune images on project omar-rel"
   exit 1
fi
oadm prune builds --confirm=true
if [ $? != 0 ] ; then 
   echo "Unable to prune builds on project omar-rel"
   exit 1
fi
oadm prune deployments --confirm=true
if [ $? != 0 ] ; then 
   echo "Unable to prune deployments on project omar-rel"
   exit 1
fi

oc project omar-dev
if [ $? != 0 ] ; then 
   echo "Unable to change to project omar-dev"
   exit 1
fi
oadm prune images --confirm=true
if [ $? != 0 ] ; then 
   echo "Unable to prune images on project omar-dev"
   exit 1
fi
oadm prune builds --confirm=true
if [ $? != 0 ] ; then 
   echo "Unable to prune builds on project omar-dev"
   exit 1
fi
oadm prune deployments --confirm=true
if [ $? != 0 ] ; then 
   echo "Unable to prune deployments on project omar-dev"
   exit 1
fi
