#!/bin/bash

echo "Deleting C# files"
rm -rf ../../../Assets/_Project/autogen-global/*.cs
echo "Generating C# files"
spacetime generate --module-path . --out-dir ../../../Assets/_Project/autogen-global --lang=csharp --namespace=BitCraft.Global --include-private
