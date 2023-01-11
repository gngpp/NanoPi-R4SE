#!/bin/bash

# Set to local feeds
pushd customfeeds/packages
export packages_feed="$(pwd)"
popd
pushd customfeeds/luci
export luci_feed="$(pwd)"
popd
sed -i '/src-git packages/d' feeds.conf.default
sed -i '/src-link packages/d' feeds.conf.default
echo "src-link packages $packages_feed" >> feeds.conf.default
sed -i '/src-git luci/d' feeds.conf.default
sed -i '/src-link luci/d' feeds.conf.default 
echo "src-link luci $luci_feed" >> feeds.conf.default
cat feeds.conf.default

max_iteration=5

for i in $(seq 1 $max_iteration)
do
  ./scripts/feeds update -a && ./scripts/feeds install -a
  result=$?
  if [[ $result -eq 
  then
    echo "Result successful"
    break   
  else
    echo "Result unsuccessful"
    sleep 1
  fi
done

if [[ $result -ne 0 ]]
then
  echo "All of the trials failed!!!"
fi