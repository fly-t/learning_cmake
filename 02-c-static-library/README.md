# 使用静态链接库配置项目

linux下的静态库文件后缀为.a，创建lib库需要两个步骤

1. 添加静态链接库的 


``` cmake
# 创建静态链接库
add_library(hello_library STATIC 
    src/Hello.cpp
)

# 添加静态链接库的头文件所在目录
target_include_directories(hello_library
    PUBLIC 
        ${PROJECT_SOURCE_DIR}/include
)
```

2. 链接上静态库

``` cmake
# 链接上静态库到可执行文件
target_link_libraries( hello_binary
    PRIVATE 
        hello_library
)
```


# 其他
可以直接创建一个脚本

`creaet.sh`

``` bash
if [ ! -d "./build" ]; then
    mkdir ./build
fi

rm -rf ./build/*; cd ./build/;cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ../"$1"; VERBOSE=1 make
```