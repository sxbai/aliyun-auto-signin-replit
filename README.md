<div align=center>

# Aliyun Auto Signin

![GitHub release](https://img.shields.io/github/v/release/sxbai/aliyun-auto-signin-replit)
![wakatime](https://wakatime.com/badge/user/92b8bbab-18e1-4e0c-af6d-082cc16c9d8a/project/0547bf5c-f66c-4798-ab89-96ddb017fef7.svg)

项目用于replit自动实现阿里云盘的每日签到活动.  

如果此项目能帮助到你, 欢迎给我一个 Star :star: 这是我持续维护的动力

----

0 成本 | 自动更新 | 支持推送 | 无需维护
</div>

# 使用说明

一键搭建脚本 (环境选择`Python`)   

阿里云盘自动签到一键脚本
```
bash <(curl -s https://raw.githubusercontent.com/sxbai/aliyun-auto-signin-replit/master/install.sh)
```
## 首次搭建注意事项
- 根目录下`config.ini`文件打开，添加你的阿里云盘32位Token，文件第一行`refresh_tokens = YOUR_REFRESH_TOKEN,ANOTHER_REFRESH_TOKEN_IF_YOU_HAVE`，意思就是多账号用英文的`,`隔开 ，最后效果就是这个样子`refresh_tokens = 第一个token,第二个token,第三个token`
- `push_types =`签到结果推送,支持: dingtalk, serverchan, pushdeer, telegram, pushplus, smtp, feishu，同时使用多个推送方式请用英文逗号 (,) 分隔，不使用请留空。
- 自动签到时间修改`config.yaml`文件，该文件设置`定时任务的cron表达式`可以设置每天几点执行签到任务，该cron指定的是格林尼治时间（UTC），如果需要换算成北京时间，要在该cron的基础上增加八小时得到北京时间。
## 推送渠道

| 渠道名        | 渠道描述         | 本地 |
|------------|--------------|:------:|
| DingTalk   | 钉钉自定义机器人     |   ✅    |
| ServerChan | Server 酱推送   |   ✅    |
| PushDeer   | PushDeer     |   ✅    |
| Telegram   | Telegram 机器人 |   ✅    |
| PushPlus   | PlusPlus     |   ✅    |
| SMTP       | SMTP 邮件      |   ✅    |
| FeiShu     | 飞书群组机器人      |   ✅    |

> 各推送渠道完整配置

- 钉钉机器人
    - `app_key`: 机器人的 `appKey`
    - `app_secret`: 机器人的 `appSecret`
    - `user_id`: 接收消息的用户 `id`, 必须是钉钉 `userid`
    - 获取 `userid` 可参考 [搜索用户userId](https://open.dingtalk.com/document/isvapp/address-book-search-user-id)
    - [钉钉机器人开发文档](https://open.dingtalk.com/document/isvapp/send-messages-based-on-enterprise-robot-callback)

- ServerChan
    - `send_key`: ServerChan 发送消息的鉴权 `key`
    - [server 酱官方文档](https://sct.ftqq.com)

- PushDeer (未测试)
    - `endpoint`: 默认为 `https://api2.pushdeer.com`, 自建 PushDeer Server 时才需要更改
    - `send_key`: PushDeer 发送消息的鉴权 `key`
    - [PushDeer on GitHub](https://github.com/easychen/pushdeer)

- Telegram Bot
    - `endpoint`: 默认为 `https://api.telegram.org/bot`, 自建 Bot Server 时才需要更改
    - `bot_token`: 机器人的 `token`, 从 Bot Father 处获取
    - `chat_id`: 发送签到消息的用户 `id`, 或 Channel 的 `@username`
    - `proxy`: 代理地址, 例如 `http://127.0.0.1:1080`, 支持 `HTTP` 和 `SOCKS5` 代理, 不使用代理请留空
    - [Telegram Bot API](https://core.telegram.org/bots/api)

- PushPlus
    - `token`: PushPlus 发送消息的用户令牌 `token`
    - `topic`: PushPlus 群组编码，不填仅发送给自己 `topic`
    - [PushPlus 官方文档](https://www.pushplus.plus)

- SMTP
    - `smtp_host`: SMTP 服务器地址
    - `smtp_port`: SMTP 服务器端口
    - `smtp_tls`: 是否使用 TLS 加密
    - `smtp_user`: SMTP 用户名
    - `smtp_pass`: SMTP 密码
    - `smtp_sender`: 发件人地址, 一般与用户名相同
    - `smtp_receiver`: 收件人地址, 仅支持单个收件人
    - 推荐使用 Microsoft Outlook 作为 SMTP 服务器

- FeiShu
    - `webhook`: 飞书群组机器人的 `webhook` 地址
    - [飞书自定义机器人指南](https://open.feishu.cn/document/ukTMukTMukTM/ucTM5YjL3ETO24yNxkjN)

## 鸣谢
- [Replit](https://github.com/replit)
- [ImYrS](https://github.com/ImYrS/aliyun-auto-signin)
