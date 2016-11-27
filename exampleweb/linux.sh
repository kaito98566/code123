系统配置 apt-get update
程序安装
PATH
命令
参数
权限
用户
用户组

常用操作

pwd
    显示现在所处的目录
ls
    不带参数就显示当前目录下的所有文件
    程序可以加参数
    -l
    -h
    -a 显示所有文件， 以 . 开头的文件是隐藏文件
    还可以带一个目录当参数，这样就会显示这个目录
cd
    cd Desktop
    改变当前目录
    . 代表当前目录
    .. 代表上级目录
    cd 不带参数就回到默认的家目录
    每个用户都有一个家目录，默认在 /home/用户名
cp
    复制出一个文件，用法如下
    cp a.txt b.txt
    复制 a.txt 并把新文件取名为 b.txt
mkdir
    创建一个目录
    -p 可以一次性创建多层目录
    mkdir -p a/b/c
rmdir
    只能用来删除一个空目录
rm
    这个命令直接删除东西，很危险，一般不要用
    删除文件或者目录
    -f 强制删除
    -r 用来删除目录
mv
    移动文件或者文件夹
    也可以用来改名
    mv a.txt b.txt
    mv b.txt ../
    mv b.txt ../gua.txt
    可以用 mv xx /tmp 的方式来将文件放入临时文件夹
    （/tmp是操作系统提供的临时文件夹，重启会删除里面的所有文件）
cat
    显示文件内容
tac
    反过来显示文件内容
nl
    显示内容并附带行号
more less head tail
    more 可以分屏分批看文件内容
    less 比 more 更高级，可以前后退看文件
    head 可以显示文件的前 10 行
    tail 可以显示文件的后 10 行
    head 和 tail 有一个 -n 参数
    head -n 20 a.gua
touch
    touch a.gua
    如果 a.gua 存在就更新修改时间
    如果 a.gua 不存在就创建文件


目录分布


权限操作
sudo
    用管理员帐户执行程序
    比如安装程序或者修改一些系统配置都需要管理员权限
su
    switch user， 切换用户
    su gua
    su root

文件权限    文件类型 用户 用户组 文件大小  修改日期     文件名
-rw-rw-r--  1       gua gua     10      11/09 20:28 b.gua
drwxrwxr-x  2       gua gua     4096    11/09 20:28 tmp
文件类型    是否可读  是否可写  是否可执行
d           r       w           x
-           r       w           x
三组 rwx 分表代表 所属用户|同组用户|其他用户
rwx 可以用数字表示为 421
于是乎
r-- 就是 4
rw- 就是 6
rwx 就是 7
r-x 就是 5

chown
    改变文件的用户
    chown gua c.gua
    chown gua:gua c.gua
chmod
    改变文件权限
    chmod 666 root.gua
    chmod +x root.gua
    chmod -x tmp


信息查找
file
    显示文件的类型（不是百分之百准确）
uname
    显示操作系统的名字或者其他信息
    uname -r
    uname -a
which
    which pwd
    显示 pwd 的具体路径
whereis
    whereis ls
    显示更全面的信息
whoami
who
find . -name ""

奇怪符号
~   家目录
>   输出重定向（覆盖模式）
>>  输出重定向（追加模式）
|   管道符号，把输出传给另一个程序作为输入
grep 查找内容
tee 把输入过来的数据输出到屏幕并且重定向一份到文件
    history | grep cat | tee a.log
``  把输出当结果替换
&   让程序在后台运行
    firefox &
()  让程序在独立子进程（shell）中运行, 这是一个很重要有用的技巧
    (firefox &)

history
grep


后台前台
jobs    显示后台运行的程序
fg      把后台任务移到前台来
    fg 1


快捷键
C-z     把正在运行的程序挂起并放到后台
C-c     中断程序的执行
C-d     输入文件终止符

输入快捷键
C-t     交换光标前面的两个字符
C-w     一次删除一个单词
C-u     一次删除一行
C-k     从光标删除到行尾
C-d     删除后一个字符
C-h     删除前一个字符

C-f     forward 往前 就是右
C-b     backward 往后 就是左箭头
C-p     pres    往上 就是上箭头
C-n     next    往下 就是下箭头





reboot
    重启
shutdown
    关机
    可以用参数指定时间
halt
    关机
