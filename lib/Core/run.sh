/home/jl/deploy/klee22/build/Release+Asserts/bin/klee \
--search=sonar --sonar-target=function-call \
--sonar-target-info=__macke_error_foo1 --target-function=__macke_error_foo1 \
--pcs=/tmp/macke/2019-05-27-22-33-17/klee/klee-out-2/test000002.pc \
--error_files=/tmp/macke/2019-05-27-22-33-17/klee/klee-out-2/test000002.macke.err.stack \
--max-time=120 --max-instruction-time=12 --allow-external-sym-calls --libc=uclibc \
--max-memory=1000 --only-output-states-covering-new --optimize --disable-inlining --output-source=false --posix-runtime --watchdog --stats-write-interval=238 --istats-write-interval=238 --entry-point macke_foo_main /tmp/macke/2019-05-27-22-33-17/bitcode/chain-foo-foo1.bc