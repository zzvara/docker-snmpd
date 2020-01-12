FROM ubuntu:disco

RUN apt update -y && \
	apt install snmpd -y && \
	apt install snmp-mibs-downloader -y && \
	download-mibs && \
	apt clean && \
	apt autoclean && \
	rm /etc/snmp/snmp.conf

ENTRYPOINT snmpd -f -Dread_config