# 构建一个helloworld工程

添加头文件

``` c
#include <stdio.h>

/* 依旧使用之前的cmake 会发现根本没有这个头文件 */ 
#include "hello.h"

int main(){

    /* 这就更不可能有hello了 */
    hello();
    return 0;
}
```

所以需要添加该头文件让cmake知道，有两种方法

方法1： 
cmake中添加指令
``` c
# 输出`compile_command.json` 文件
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
```
方法2
使用bear

pacman:

``` bash
sudo pacman -Syy 
sudo pacman -S bear
sudo pacman -S protobuf

```

archlinx 有些困难， 推荐还是ubuntu。

``` c
bear make   
```
方法3： 

在项目最外部创建一个build文件夹， 然后在该文件夹下执行
``` bash
rm -rf *;cmake -DCMAKE_EXPORT_COMPILE_COMMANDS ON ../01-hello-headers/;VERBOSE=1 make
```

可以直接创建一个脚本

creaet.sh

``` bash
if [ ! -d "./build" ]; then
    mkdir ./build
fi

rm -rf ./build/*; cd ./build/;cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ../"$1"; VERBOSE=1 make
```