#!/bin/bash
# List all .tmp files in /tmp
echo &quot;Listing all .tmp files in /tmp:&quot;
ls /tmp/*.tmp
# Remove all .tmp files from /tmp
echo &quot;Removing all .tmp files from /tmp...&quot;
rm -f /tmp/*.tmp
# Confirm deletion by listing /tmp again
echo &quot;Listing contents of /tmp after deletion:&quot;
ls /tmp

