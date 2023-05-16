# 基础镜像 mysql:5.7.41
FROM mysql:5.7.41

# 定义环境变量
ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d
ENV INSTALL_DB_SQL init_goview.sql

# 拷贝
COPY ./$INSTALL_DB_SQL $AUTO_RUN_DIR/

# 执行
RUN chmod 777 $AUTO_RUN_DIR/$INSTALL_DB_SQL
