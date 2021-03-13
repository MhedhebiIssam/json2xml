# Package

version     = "0.1.0"
author      = "Mhedhebi issam"
description = "convert json to xml  : JsonNode( comapatible with  module json ) To  XmlNode (comapatible with  module  xmltree)"
license     = "MIT"
srcDir      = "src"

requires "nim >= 0.10.0"

task test, "Runs the test suite":
  exec "nim c -r ./tests/test_json2xml.nim"