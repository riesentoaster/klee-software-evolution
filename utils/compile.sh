if [ -z "$1" ]
then
     echo "Usage: $0 [file.c]"
     exit 1
fi

clang -I ../klee_build/include -fsanitize=signed-integer-overflow -fsanitize=unsigned-integer-overflow -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone $1