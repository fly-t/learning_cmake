# cmake学习

学习地址： 

https://www.bilibili.com/video/BV1Mw411M761?t=208.2
https://github.com/ttroy50/cmake-examples/tree/master

# 安装软件
1. vscode
2. clangd插件（不推荐c/c++插件）
> 配置`compile_commands.json`, 该文会通过cmake自动构建。
> 
> 但是需要配置`compile_commands.json`的
![](https://raw.githubusercontent.com/fly-t/images/main/blog/README-2024-03-20-20-26-11.png)

https://blog.csdn.net/xzq1207105685/article/details/126091947

``` c

    // clang 配置
    "clangd.arguments": [
        // compelie_commands.json 文件的目录位置(相对于工作区，由于 CMake 生成的该文件默认在 build 文件夹中，故设置为 build)
        "--compile-commands-dir=build",
        // 同时开启的任务数量
        "-j=12",
        // 在后台自动分析文件（基于complie_commands)
        "--background-index",
        // 全局补全（会自动补充头文件）
        "--all-scopes-completion",
        // pch优化的位置(memory 或 disk，选择memory会增加内存开销，但会提升性能) 推荐在板子上使用disk
        "--pch-storage=disk",
        // 更详细的补全内容
        "--completion-style=detailed",
        // 让 Clangd 生成更详细的日志: verbose  简单:info
        "--log=info",
        // 输出的 JSON 文件更美观
        "--pretty",
    ]
```

3. cmake插件

4. cmakeTools(不推荐安装)
> 配置visable参数，底部会显示build和项目参数

5. outputcolor(带颜色输出）


