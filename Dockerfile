FROM ubuntu:disco

RUN apt update -y && \
	apt install snmpd -y && \
	apt clean && \
	apt autoclean

ENTRYPOINT snmpd -f -c /etc/snmp/snmpd.conf