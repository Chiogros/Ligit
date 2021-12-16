#!/bin/bash

TMP_REPO=/tmp/repo/

# Clean temporary directory
rm -rf "$TMP_REPO" &> /dev/null

# Clone latest version
git clone "$REPOSITORY_HTTPS_URL" "$TMP_REPO" &> /dev/null

if [ "$?" -ne 0 ]; then
	>&2 echo "error: cannot download latest revision."
	echo "Last revision displayed..."
	exit 1
else 
	echo "Latest revision downloaded."
fi

# Final repo directory
cd /root/repo/

# Clean old website and copy the newly downloaded
rm -rf * .* &> /dev/null
mv "$TMP_REPO"* .
rm -rf "$TMP_REPO" &> /dev/null

# Give right access to all (so user www-data has access)
chmod 777 -R .
