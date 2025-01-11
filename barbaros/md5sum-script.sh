#!/bin/bash

prepareLine() {
    while read line ; do
        fname=$(echo $line | sed "s/.* //g")
        fhash=$(echo $line | sed "s/ .*//g")
        echo -e "  $fhash\t$(du -bs $fname| sed 's|\./||g')"
    done
}

cat baslik | sed "s/XdateX/$(date -R)/g" > dists/stable/Release
cd dists/stable/
echo "MD5Sum:" >>  Release
find . -type f | xargs md5sum | prepareLine >> Release
echo "SHA1:" >>  Release
find . -type f | xargs sha1sum | prepareLine >> Release
echo "SHA256:" >>  Release
find . -type f | xargs sha256sum | prepareLine >> Release
echo "SHA512:" >>  Release
find . -type f | xargs sha512sum | prepareLine  >> Release
