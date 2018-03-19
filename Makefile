testclean:
	rm -rf ./logs/*
	rm -f ./config/LastKnownDownloadedFileId.txt
	rm -rf ./scriptlogs/*

backup:
	mkdir -p /opt/backups/
	tar -zcpvf /opt/backups/incapsula.bkup.`date +%F-%H-%M`.tgz --exclude "scriptlogs" ./ 
