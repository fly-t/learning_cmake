# 使用动态链接库配置项目

linux下的静态库文件后缀为.so，创建so库需要两个步骤

1. 添加静态链接库的 


``` cmake
# 创建静态链接库
add_library(hello_library SHARED 
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