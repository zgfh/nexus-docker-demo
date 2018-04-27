# nexus 仓库测试
## 测试方法
修改 Dockerfile 内的nexus 地址，账户密码信息，执行
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