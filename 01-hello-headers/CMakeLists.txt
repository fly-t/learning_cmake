# 最小需求版本
cmake_minimum_required(VERSION 3.5)

# 输出`compile_command.json` 文件
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# 构建对象名
project(hello-headers)

# 添加需要编译的源文件, 不要要头文件 cmake会自动分析头文件
set(SOURCES
    src/main.cpp
    src/hello.cpp
)

# 用源文件构建可执行文件
add_executable(hello-headers ${SOURCES})

# 将所需要的头文件路径注入到可执行文件中
target_include_directories(hello-headers
    PRIVATE
        ${PROJECT_SOURCE_DIR}/include
)