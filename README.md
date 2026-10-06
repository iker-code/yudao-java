# 管理系统后端

基于 Spring Boot 2.7 和 Java 8 的后台管理服务，当前版本只启用系统管理与基础配置模块。

## 启动

1. 创建数据库并导入 `sql/mysql/ruoyi-vue-pro.sql`。
2. 根据本地环境修改 `yudao-server/src/main/resources/application-local.yaml`。
3. 启动 Redis 和 MySQL。
4. 执行：

```bash
mvn clean package -DskipTests
java -jar yudao-server/target/management-system-server.jar
```

默认 API 地址为 `http://localhost:48080/admin-api`。前端项目位于同级目录的 `yudao-ui-admin-vue3`。

## 当前功能范围

- 首页
- 用户、角色、部门、岗位、菜单管理
- 字典、通知和审计日志
- 系统参数、文件、定时任务等基础配置
