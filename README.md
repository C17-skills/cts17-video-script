# CTS17 Video Script（cts17-video-script）

A self-improving short-video script writer. 会自我迭代的短视频口播脚本 skill。

> 作者：陈十七。CTS 是「陈十七编导系统」的缩写。

写短视频口播文案和视频脚本的 skill。三个特点：

1. **开头优先**：先写前 3～5 秒，每次给 5 个不同句式的开头。
2. **像你本人说话**：从你的原稿里学语气，分"随拍"和"写稿"两种。
3. **越用越准**：你每改一次稿、每报一次数据，它都会记下来，写进你的个人档案，下次照着写。

纯 Markdown，不绑定模型。Claude Code、Codex 可以直接装；其他 AI 把 `SKILL.md` 和 `references/` 的内容贴进去也能用。

## 安装

在本仓库点击 **Code → Download ZIP**，解压后在该目录运行对应的安装命令。

macOS / Linux

```bash
bash scripts/install.sh
```

Windows（PowerShell）

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\install.ps1
```

安装路径为 `~/.claude/skills/cts17-video-script`（Claude Code）和 `${CODEX_HOME:-~/.codex}/skills/cts17-video-script`（Codex 兼容目录）。重复运行会更新方法文件并保留已有的 `profile/`。

在单个项目里使用时，将 `cts17-video-script` 文件夹放到项目的 `.claude/skills/`（Claude Code）或 `.agents/skills/`（Codex）。

## 使用

对 AI 说："用 cts17-video-script 帮我写一条口播，主题是……"

第一次用会问你三个问题（贴 3 条你的原稿、账号讲给谁和卖什么、有什么不能说），建好你的档案。之后每次写完，它会在最后一行告诉你这次记了什么。

发完视频把数据告诉它（播放、留存、评论），攒够 10 条，它会自动把对你的号有效的开头句式排到前面。

## 目录

- `SKILL.md`：流程和自我迭代规则
- `references/`：开头、骨架、CTA、商单、检查清单
- `profile.example/`：个人档案模板
- `profile/`：你的个人档案（不进 git）

## 说明

方法部分参考了多套公开的短视频方法论，用自己的话重新整理；可选配合 [dbskill](https://github.com/dontbesilent2025/dbskill) 使用。它保证不了爆款，能做的是让开头不犯低级错误，并且照着你的数据越改越准。

## 许可证

本 Skill 由陈十七创作，采用 [CC BY-NC 4.0 许可证](LICENSE)，仅限非商业使用。分享或改编时须保留作者署名，附上许可证链接并注明修改。将本 Skill 用于商单、付费服务、转售或其他商业用途，须事先取得作者授权。
