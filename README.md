# UniFuncs Agent Skills

[English](README.md) | [简体中文](README.zh-CN.md)

UniFuncs is a global leader in AI-powered deep search, focused on delivering highly reliable, highly accurate, and highly timely search and research services.

This repository includes 4 core skills that help any agent easily gain deep-search capabilities. If you are using OpenClaw or Claude Code, these skills are built for you.

## Available Skills

| Skill | Directory | Purpose | Trigger Keywords |
| ------- | ------ | ------ | -------- |
| [Web Search](skills/unifuncs-search/SKILL.md) | `skills/unifuncs-search/` | Quickly retrieve real-time lists of web information | search, lookup, online search |
| [Web Reader](skills/unifuncs-reader/SKILL.md) | `skills/unifuncs-reader/` | Read content from URLs such as web pages, PDFs, Word, Excel, and PPTX files | read, fetch, extract |
| [Deep Search](skills/unifuncs-deep-search/SKILL.md) | `skills/unifuncs-deep-search/` | Perform fast, comprehensive AI-driven deep search with anti-hallucination cross-verification across multiple sources (1-5 minutes) | deep search, in-depth search, deep investigation, fact verification |
| [Deep Research](skills/unifuncs-deep-research/SKILL.md) | `skills/unifuncs-deep-research/` | Build on deep search with AI-powered deep reasoning and analysis to generate long-form reports (3-10 minutes) | deep research, in-depth research |

## Authenticate

Go to [UniFuncs Account](https://unifuncs.com/account) to get your API Key.

## Installation

### OpenClaw Installation Guide

Send the following message to the OpenClaw:

```bash
Please install all the skills from https://github.com/UniFuncs/skills
API Key: sk-your-api-key
```

### Claude Code Installation Guide

1. Install UniFuncs Skills

Execute the following command:

```bash
npx skills add https://github.com/UniFuncs/skills
```

1. Remind users to set environment variable:

```bash
export UNIFUNCS_API_KEY="sk-your-api-key"
```

## MCP Server Installation Guide

Steamable HTTP Endpoint:

```text
URL: https://mcp.unifuncs.com/mcp
Headers: Authorization: Bearer sk-your-api-key
```

Server-Sent Events (SSE) Endpoint:

```text
URL: https://mcp.unifuncs.com/sse
Headers: Authorization: Bearer sk-your-api-key
```
