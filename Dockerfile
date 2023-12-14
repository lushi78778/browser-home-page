# 使用一个轻量的基础镜像，例如 Node.js 提供的 Alpine 镜像
FROM node:alpine

# 设置工作目录
WORKDIR /usr/src/app

# 复制项目文件到工作目录
COPY . .

# 安装 http-server
RUN npm install -g http-server

# 暴露容器的端口
EXPOSE 8080

# 定义启动命令
CMD ["http-server", "-o", "-c-1"]
