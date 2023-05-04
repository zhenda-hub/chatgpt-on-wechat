#FROM ghcr.io/zhayujie/chatgpt-on-wechat:latest
FROM ghcr.io/zhenda-hub/chatgpt-on-wechat:latest

ENTRYPOINT ["/entrypoint.sh"]