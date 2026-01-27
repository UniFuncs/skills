# Web Search API 参考文档

## 端点

```
POST https://api.unifuncs.com/api/web-search/search
```

## 请求参数

| 参数名 | 类型 | 必需 | 描述 |
|--------|------|------|------|
| query | string | 是 | 搜索查询词，如：今日金价 |
| area | string | 否 | 搜索地区，可选值：`global`（全球）、`cn`（中国），默认为 `global` |
| freshness | string | 否 | 结果时效性，可选值：`Day`、`Week`、`Month`、`Year` |
| includeImages | boolean | 否 | 是否同时搜索图像，并在 `images` 提供结果，默认值为 `false` |
| page | number | 否 | 页码，默认值为 `1` |
| count | number | 否 | 每页结果数量（1-50），默认值为 `10` |
| format | string | 否 | 返回格式，可选值：`json`、`markdown`、`md`、`text`、`txt`，默认值为 `json` |

> **注意：** `cn` 地区搜索结果通常经过审查过滤，因此信源可能不如 `global` 地域全面。如您使用 `global` 地区搜索，请确保您的应用符合当地法律法规。

## 请求头

```
Content-Type: application/json
Authorization: Bearer API_KEY
```

## 请求示例

```json
{
  "query": "今日金价",
  "page": 1,
  "count": 5
}
```

## 响应字段说明

| 字段 | 类型 | 描述 |
|------|------|------|
| code | number | 状态码（查看下方状态码说明） |
| message | string | 状态消息 |
| requestId | string | 请求ID，用于追踪和调试 |
| data.webPages | array | 网页搜索结果数组 |
| data.webPages[].name | string | 网页标题 |
| data.webPages[].url | string | 网页URL |
| data.webPages[].displayUrl | string | 显示用的URL |
| data.webPages[].snippet | string | 网页内容片段 |
| data.webPages[].summary | string | 网页内容摘要（global地域与snippet相同） |
| data.webPages[].siteName | string | 网站名称 |
| data.webPages[].siteIcon | string | 网站图标URL |
| data.images | array | 图片搜索结果数组 |
| data.images[].thumbnailUrl | string | 图片缩略图URL |
| data.images[].contentUrl | string | 原始图片URL |
| data.images[].width | number | 图片宽度 |
| data.images[].height | number | 图片高度 |
| data.images[].hostPageUrl | string | 图片所在页面URL |
| data.images[].hostPageDisplayUrl | string | 图片所在页面显示用URL |

## 状态码和错误处理

| 状态码 | 消息 | 说明 |
|--------|------|------|
| 0 | 请求成功 | 返回正常的响应内容 |
| -20001 | 服务器错误 | 联系客服确认原因或稍后再试 |
| -20011 | 无权限访问 | 账户可能无权限访问该API |
| -20014 | 账户被禁用 | 请联系客服确认账户禁用原因 |
| -20021 | API Key无效或已过期 | 请检查API Key是否正确且有效 |
| -20025 | 账户余额不足 | 请检查账户余额是否充足 |
| -20033 | 请求超出速率限制 | 降低请求频率或联系UniFuncs提升您的用户级别 |
| -30000 | 搜索失败 | 请联系客服确认失败原因 |
| -30001 | 搜索关键词无效 | 请检查搜索关键词是否正确 |
