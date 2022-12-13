# Running mailcatcher locally
# After exec this command, open http://localhost:1080 in your browser

docker run --name='mailcatcher' -d \
  --publish=1080:1080 \
  --publish=1025:1025 \
dockage/mailcatcher:0.8.2
