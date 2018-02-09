#!/usr/bin/env sh

VERSION="3.1.3"

# get absolute path to this script
ROOT=$(cd `dirname $0` && pwd)

# Target path, where the files should live
TARGET="$ROOT/ShadowSocks-libev-iOS/shadowsocks-libev"

if [ ! -d $TARGET ]; then
    # Target name of the downloaded TAR file
    TARNAME="$ROOT/shadowsocks-libev.tar.gz"

    curl -L -o $TARNAME https://github.com/shadowsocks/shadowsocks-libev/releases/download/v3.1.3/shadowsocks-libev-$VERSION.tar.gz
    tar xf $TARNAME -C $ROOT
    rm $TARNAME
    mv $ROOT/shadowsocks-libev-$VERSION $TARGET
fi

CARESROOT="$ROOT/ShadowSocks-libev-iOS/c-ares"
LIBCARES="$CARESROOT/lib/libcares.a"

if [ ! -e $LIBCARES ]; then
    cd $CARESROOT
    sh build-cares.sh
fi

MBEDTLSROOT="$ROOT/ShadowSocks-libev-iOS/mbedtls-for-ios"
LIBMBEDTLS="$MBEDTLSROOT/lib/libmbedtls.a"

if [ ! -e $LIBMBEDTLS ]; then
    cd $MBEDTLSROOT
    sh build_ios.sh
fi
