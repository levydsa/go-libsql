#!/usr/bin/env sh

set -xe

cd libsql-c

./build.sh

rm -rf ../lib

mkdir -p \
  ../lib/x86_64-unknown-linux-musl \
  ../lib/aarch64-unknown-linux-musl \
  ../lib/aarch64-apple-darwin \
  ../lib/x86_64-apple-darwin \
  ../lib/x86_64-pc-windows-gnu

cp ./libsql.h ../lib/libsql.h
cp ./target/x86_64-unknown-linux-musl/release/liblibsql.a ../lib/x86_64-unknown-linux-musl/
cp ./target/aarch64-unknown-linux-musl/release/liblibsql.a ../lib/aarch64-unknown-linux-musl/
cp ./target/aarch64-apple-darwin/release/liblibsql.a ../lib/aarch64-apple-darwin/
cp ./target/x86_64-apple-darwin/release/liblibsql.a ../lib/x86_64-apple-darwin/
cp ./target/x86_64-pc-windows-gnu/release/liblibsql.a ../lib/x86_64-pc-windows-gnu/

