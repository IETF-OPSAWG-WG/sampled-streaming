# sampled-streaming

The .xml and .yang files are the actual files being worked on.  The .tree files are regenerated via `pyang --ietf -f tree -o <prefix>.tree ./<prefix>.yang`.  The .txt files are regenerated via `xml2rfc --v3 <xml file>`.

Alteratively, the Makefile here does everything, in the correct order.
