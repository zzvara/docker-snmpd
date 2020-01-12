FROM ubuntu:disco

RUN apt update -y && \
	apt install snmpd -y && \
	apt install snmp-mibs-downloader -y && \
	download-mibs && \
	apt clean && \
	apt autoclean

ENTRYPOINT snmpd -f -Dread_config