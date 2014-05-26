#!/bin/bash
set -ev

# Copyright (C) 2013 Goodow.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

j2objc_version=0.9.2
sha1_checksum=04f4cc5e9294c8acf471a3e50efb690349ddb66c

if [[ -d dist ]]; then
  exit
fi

echo "fetching j2objc"
curl -OL https://github.com/google/j2objc/releases/download/${j2objc_version}/j2objc-${j2objc_version}.zip
echo "${sha1_checksum}  /Projects/WebSocketTest/Pods/J2ObjC/j2objc-${j2objc_version}.zip" | shasum -c
unzip -o -q /Projects/WebSocketTest/Pods/J2ObjC/j2objc-${j2objc_version}.zip
mv /Projects/WebSocketTest/Pods/J2ObjC/j2objc-${j2objc_version} /Projects/WebSocketTest/Pods/J2ObjC/dist
