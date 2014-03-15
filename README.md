dotvim
======

My vim plugins and vimrc

## Installation
Reference: [使用github管理VIM][1]

## Usage
### For Windows
1. 在`$HOME`下执行命令
```
git clone https://github.com/qinshaoq/dotvim vimfiles
```
这一步之后，虽然bundle/vundle目录存在，但是里边并没有实际的内容

git在Windows下的安装参考[Vundle for Windows][2]

2. 下载vundle的内容，执行以下代码
```
git submodule init
git submodule update
```

3. 利用vundle更新插件
```
vim +BundleInstall
```

### For Linux

[1]: https://github.com/Aaronlong31/articles/blob/master/manager-vim-config-and-plugin-with-github.markdown
[2]: https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows
