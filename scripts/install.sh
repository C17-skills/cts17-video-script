#!/usr/bin/env bash
# 安装到 Claude Code 和 Codex。在仓库根目录运行：bash scripts/install.sh
set -e
SRC="$(cd "$(dirname "$0")/.." && pwd)"
for DEST in "$HOME/.claude/skills/cts17-video-script" "${CODEX_HOME:-$HOME/.codex}/skills/cts17-video-script"; do
  mkdir -p "$DEST"
  for f in SKILL.md AGENTS.md CHANGELOG.md LICENSE references profile.example; do rm -rf "$DEST/$f"; cp -R "$SRC/$f" "$DEST/"; done
  if [ ! -d "$DEST/profile" ]; then
    if [ -d "$SRC/profile" ]; then cp -R "$SRC/profile" "$DEST/profile"; else cp -R "$SRC/profile.example" "$DEST/profile"; fi
  fi
  echo "已安装：$DEST（已有的 profile 保留不动）"
done
