#!/bin/sh

# paranoia: sometimes autoconf doesn't get things right the first time
autoreconf --verbose --install --symlink --force
autoreconf --verbose --install --symlink --force
autoreconf --verbose --install --symlink --force

# add -L$LIBCTL_DIR/lib in the searching path

#sed -i 's@checking for vector3_dot in -lctlgeom@checking for vector3_dot in -L$LIBCTL_DIR/lib -lctlgeom@' configure
#sed -i 's@-lctlgeom  $LIBS@-L$LIBCTL_DIR/lib -lctlgeom  $LIBS@' configure
#sed -i 's@$CPPFLAGS $GUILE_CPPFLAGS@$CPPFLAGS $GUILE_CPPFLAGS -I$LIBCTL_DIR/include @' configure

#./configure --without-scheme --with-libctl=/home/zhy/local/libctl/ "$@" 
./configure --without-scheme --enable-maintainer-mode --with-libctl=/home/zhy/local/libctl/ --prefix=/home/zhy/Documents/polariton/meep_install LDFLAGS="-L$HOME/local/libctl/lib" CPPFLAGS="-I$HOME/local/libctl/include/"  "$@"
