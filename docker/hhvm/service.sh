#!/bin/bash
exec hhvm --mode server -d hhvm.server.port=$HHVM_PORT -vServer.AllowRunAsRoot=1 -d hhvm.max_hot_text_huge_pages=0 -d hhvm.server.source_root=$HHVM_SOURCE_ROOT