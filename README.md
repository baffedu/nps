## nps 运行说明
```bash
docker run -d --name nps --restart=always --net=host -v nps:/nps/conf baffedu/nps:latest
```

## nps config配置路径
```bash
nps: /var/lib/docker/volumes/nps/_data/
```

没错！docker volumes下面！
