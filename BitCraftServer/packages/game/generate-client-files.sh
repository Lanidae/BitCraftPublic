#!/bin/bash

cd "$(dirname "$0")"
set -euo pipefail

language="cs"
while getopts l: flag
do
    case "${flag}" in
        l) language=${OPTARG};;
        *) language="cs";;
    esac
done

if [ "$language" = "ts" ]; then
  echo "Generating typecript files"
  spacetime generate --module-path . --out-dir ../../../../bitcraft-login-server/login-server/src/autogen/ --lang=ts --namespace=Bitcraft.Spacetime
else
  echo "Deleting C# files"
  rm -rf ../../../Assets/_Project/autogen/*.cs
  echo "Generating C# files"
  spacetime generate --module-path . --out-dir ../../../Assets/_Project/autogen --lang=csharp --namespace=BitCraft.Spacetime --include-private
fi
