# nexus 仓库测试
## 测试方法
下载本仓库代码 https://github.com/zgfh/nexus-docker-demo/archive/1.0.0.zip
修改 Dockerfile 中“repository”值为您的的 nexus 仓库地址，“repository_username”,"repository_password"为nexus仓库的账户密码信息(如果没有更改，账户密码默认值是对的)，
执行下面命令
```
docker build .
```
出现下面提示，表示nexus 仓库成功
```
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 01:13 min
[INFO] Finished at: 2018-04-27T14:06:58+00:00
[INFO] Final Memory: 37M/210M
[INFO] ------------------------------------------------------------------------
 ---> 9ddcf986921c
Removing intermediate container 3f97ada53184
Successfully built 9ddcf986921c

```

# 注意
- 如果提示 401 表示账户密码错误
- 如果提示 400 说明版本已经存在了，修改Dockerfile 中的version