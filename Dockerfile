FROM artifactory.iventuregroup.com:5000/hyperion/elasticsearch:6.1.3-sgm.1

MAINTAINER pjpires@gmail.com

# Override config, otherwise plug-in install will fail
ADD config /elasticsearch/config

# Set environment
ENV DISCOVERY_SERVICE elasticsearch-discovery

# Kubernetes requires swap is turned off, so memory lock is redundant
ENV MEMORY_LOCK false
