VDRAFT=02
VYANG=2019-10-22

dist: yang tree txt git

yang:
	cp ietf-sampled-streaming@$(VYANG).yang in.yang
	pyang --ietf -f yang -o ietf-sampled-streaming@$(VYANG).yang --yang-canonical in.yang
	rm in.yang

tree:
	pyang --ietf -f tree -o ietf-sampled-streaming@$(VYANG).tree ietf-sampled-streaming@$(VYANG).yang

txt:
	xml2rfc --v3 draft-gray-sampled-streaming-$(VDRAFT).xml

git:
	git add draft-gray-sampled-streaming-$(VDRAFT).xml
	git add draft-gray-sampled-streaming-$(VDRAFT).txt
	git add ietf-sampled-streaming@$(VYANG).yang
	git add ietf-sampled-streaming@$(VYANG).tree
