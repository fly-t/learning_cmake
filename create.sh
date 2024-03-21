if [ ! -d "./build" ]; then
    mkdir ./build
fi

rm -rf ./build/*; cd ./build/;cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ../"$1"; VERBOSE=1 make