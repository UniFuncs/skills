# UniFuncs Agent Skills

[English](README.md) | [简体中文](README.zh-CN.md)

UniFuncs 是全球领先的人工智能深度搜索服务商，专注于提供高可靠性、高准确性、高时效性的搜索与研究服务。

本仓库包含 4 个核心 Skill，帮助任意 Agent 轻松获得深度搜索能力。如果您正在使用 OpenClaw 或 Claude Code，那么这些 Skill 是为您量身打造的。

## Available Skills

| Skill | 目录 | 用途 | 触发词 |
| ------- | ------ | ------ | -------- |
| [网页搜索](skills/unifuncs-search/SKILL.md) | `skills/unifuncs-search/` | 快速实时检索互联网信息列表 | 搜索、查找、联网 |
| [网页阅读](skills/unifuncs-reader/SKILL.md) | `skills/unifuncs-reader/` | 读取网页、PDF、Word、Excel、PPTX 等 URL 内容 | 阅读、抓取、提取 |
| [深度搜索](skills/unifuncs-deep-search/SKILL.md) | `skills/unifuncs-deep-search/` | 利用人工智能进行高速全面的深度搜索，支持反幻觉多源交叉验证（1-5 分钟） | 深度搜索、深搜、深度挖掘、深挖、真实性核查 |
| [深度研究](skills/unifuncs-deep-research/SKILL.md) | `skills/unifuncs-deep-research/` | 在深度搜索基础上进行 AI 深度推理与分析，产出长篇研究报告（3-10 分钟） | 深度研究、深研、深度调研 |

## 鉴权

前往 [UniFuncs Account](https://unifuncs.com/account) 获取 API Key。

## 安装

### OpenClaw 安装指南

向 OpenClaw 发送以下消息：

```bash
Please install all the skills from https://github.com/UniFuncs/skills
API Key: sk-your-api-key
```

### Claude Code 安装指南

1. 安装 UniFuncs Skills

执行以下命令：

```bash
npx skills add https://github.com/UniFuncs/skills
```

1. 提醒用户设置环境变量：

```bash
export UNIFUNCS_API_KEY="sk-your-api-key"
```

## MCP Server 安装指南

Streamable HTTP 和 SSE 端点：

```text
URL: https://mcp.unifuncs.com/sse
Headers: Authorization: Bearer sk-your-api-key
```
