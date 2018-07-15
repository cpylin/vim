我的vim配置
==========
有两个版本的vim配置文件可供使用
------------------------------
1. 普通版
2. 服务器版本(仅用于方便文本编辑，较少的插件使用)

`注意,配置文件仅在MacOS环境下测试，其他平台可能不适用`

安装步骤:
--------
1.通过以下命令下载相关配置文件
```bash
git clone https://github.com/cpylin/vim.git ~/.vim
```
2.版本选择
-   2.1使用普通版
```
   ln -vs ~/.vim/vimrc ~/.vimrc
```
-   2.2使用服务器版
```
   ln -vs ~/.vim/vimrc_svr ~/.vimrc
```
3.打开vim, 在vim里执行命令
```
:PlugInstall
```
