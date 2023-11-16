if [ -z "$1" ] || [ -z "$2" ]
then
     echo "Usage: $0 [local-directory] [name]"
     exit 1
fi

complete_dir=$(realpath $1)
folder_name=$(basename $complete_dir)

docker run \
     --rm \
     -ti \
     -v "/home/ubuntu/utils:/home/klee/utils" \
     -v "$complete_dir:/home/klee/$folder_name" \
     --name "$2" \
     --ulimit='stack=-1:-1' \
     klee/klee