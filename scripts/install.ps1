# 安装到 Claude Code 和 Codex。在仓库根目录运行：powershell -ExecutionPolicy Bypass -File scripts\install.ps1
$src = Split-Path -Parent $PSScriptRoot
$codex = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $HOME ".codex" }
$dests = @((Join-Path $HOME ".claude\skills\cts17-video-script"), (Join-Path $codex "skills\cts17-video-script"))
foreach ($d in $dests) {
  New-Item -ItemType Directory -Force -Path $d | Out-Null
  foreach ($f in "SKILL.md","AGENTS.md","CHANGELOG.md","LICENSE","references","profile.example") {
    $t = Join-Path $d $f
    if (Test-Path $t) { Remove-Item -Recurse -Force $t }
    Copy-Item -Recurse -Force (Join-Path $src $f) $t
  }
  $p = Join-Path $d "profile"
  if (-not (Test-Path $p)) {
    $sp = Join-Path $src "profile"
    if (Test-Path $sp) { Copy-Item -Recurse $sp $p } else { Copy-Item -Recurse (Join-Path $src "profile.example") $p }
  }
  Write-Host "已安装：$d（已有的 profile 保留不动）"
}
