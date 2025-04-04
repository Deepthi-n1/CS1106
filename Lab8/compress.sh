

#!/bin/bash
# Create a tar archive of /var/log
echo &quot;Creating tar archive of /var/log...&quot;
tar -cvf logs.tar /var/log
# Compress the archive with gzip
echo &quot;Compressing the tar archive...&quot;
gzip logs.tar
# List the created archive
echo &quot;Listing the compressed archive:&quot;
ls -lh logs.tar.gz
