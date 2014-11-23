extproc sh

n=configure
test -f "./$n." || { echo "\`./$n' not found !!!"; exit 1; }
"./$n" FORCE_UNSAFE_CONFIGURE=1 \
       --disable-gcc-warnings \
       "$@" 2>&1 | tee "$n.log"
