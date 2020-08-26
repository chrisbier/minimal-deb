# minimal-deb
A tool and framework for a minimal Debian package.

This is pretty much the bare minimum you need to make a working deb package for Debian/Ubuntu/Mint/etc. I made this because there seems to be a lack of info on the very basics. It's not magical, it's a couple of archives inside another archive with a few metadata files. This probably goes against every suggestion and official reccomendation, but it works. There are some optional fields thrown in the control file because I like them. I'm not responsible for what you do with this information.

# build.sh
Example: `./build.sh MyPackage 1.0.1`

This takes whatever is in the debian directory and copies it into the data tarball. The subdirectories directly map to the end filesystem.

Example: `debian/opt/mypackage/blah` Will be installed at: `/opt/mypackage/blah`


# More info
https://en.wikipedia.org/wiki/Deb_%28file_format%29
https://wiki.debian.org/Packaging
https://www.debian.org/doc/manuals/developers-reference/