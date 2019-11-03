# ietf-work

A place for working on my IETF drafts as they get updated and submitted to the IETF.

The .xml and .yang files are the actual files being worked on.  The .tree files are regenerated via `pyang --ietf -f tree -o <prefix>.tree ./<prefix>.yang`.  The .txt files are regenerated via `xml2rfc --v3 <xml file>`.
