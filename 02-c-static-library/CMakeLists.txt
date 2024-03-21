# 最小需求版本
cmake_minimum_required(VERSION 3.5)

# 输出`compile_command.json` 文件（这里在外部脚本中添加了该宏定义）
# set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# 构建对象名
project(hello_binary)

# 添加静态库
add_library(hello_library STATIC
    src/hello.cpp
)

# 添加需要编译的源文件, 不要要头文件 cmake会自动分析头文件
target_include_directories(hello_library
    PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)


# 用源文件构建可执行文件
add_executable(hello_binary 
    src/main.cpp
) 

# 链接
target_link_libraries(hello_binary
    PRIVATE
    hello_library
)