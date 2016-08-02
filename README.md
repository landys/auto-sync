# auto-sync

基于mac os的fswatch，通过脚本自动同步web-commons的修改到依赖于它的bmb-organizer等project中。同步脚本见：

https://github.com/landys/auto-sync

    git clone https://github.com/landys/auto-sync.git

修改`config.sh`中的相应变量，主要是`watch_path`, `dest_path`和`filter_exts`变量。再直接执行`run.sh`。

    ./run.sh

脚本中`run.sh`为入口，`config.sh`为配置文件。

`changed.sh`是监控某个目录，可修改`config.sh`中的`watch_dir`变量来修改监控目录。

`sync_codes.sh`单向同步指定扩展名的文件到目标目录。注意为了安全，源目录的删除操作不作同步。
