#!/bin/bash

package_name=$1
version=$2

file_name=$package_name"_"$version"_all.deb"

cd debian
sed -i -e 's/VERSION_NUMBER/'$version'/' control
tar zcf data.tar.gz $(ls | grep -v control | grep -v debian-binary)
tar cf control.tar ./control
ar r $file_name debian-binary control.tar data.tar.gz
