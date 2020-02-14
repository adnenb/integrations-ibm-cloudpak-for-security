FROM registry.access.redhat.com/ubi8/python-36

USER root

RUN yum -y update --security

USER 1001

LABEL name="isc-car-connector-tenable" \
			vendor="tenable.io" \
			summary="tenable connector to Connect Asset/Risk (CAR)" \
			release="1.2" \
			version="1.2.0.0" \
			description="Tenable connector feeds CAR with assets informations and vulnerabilities."

COPY /licenses/LA_en /licenses/LA_en

RUN pip install tenable-ibm-cp4s

CMD tenable-ibm-cp4s