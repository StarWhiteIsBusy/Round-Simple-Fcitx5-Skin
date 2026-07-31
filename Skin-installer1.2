#!/bin/bash

SKIN_DIR="$HOME/.local/share/fcitx5/themes/round-simple-1.2"
DEFAULT_BACKUP_DIR="$HOME/.local/share/fcitx5/Starwhite_themes_backup/round-simple-1.2"
BACKUP_DIR="$DEFAULT_BACKUP_DIR"
CONFIG_FILE="$HOME/.config/fcitx5/conf/classicui.conf"
NOCTALIA_CONFIG="$HOME/.config/noctalia/noctalia-config.toml"
TEMPLATES_DIR="$SKIN_DIR/templates"
ACCENT="#b0947c"

show_banner() {
  local w=44
  printf '\n╔'; for ((i=0; i<w; i++)); do printf '═'; done; printf '╗\n'
  printf '║'; for ((i=0; i<w; i++)); do printf ' '; done; printf '║\n'
  while IFS= read -r line; do
    [ -z "$line" ] && continue
    local pad=$(( (w - ${#line}) / 2 ))
    local ext=$(( (w - ${#line}) % 2 ))
    printf "║%*s%s%*s║\n" "$pad" "" "$line" "$((pad + ext))" ""
  done < <(echo "Round Simple 1.2")
  printf '║'; for ((i=0; i<w; i++)); do printf ' '; done; printf '║\n'
  local s1="Fcitx5 Skin"
  local p1=$(( (w - ${#s1}) / 2 ))
  local e1=$(( (w - ${#s1}) % 2 ))
  printf "║%*s%s%*s║\n" "$p1" "" "$s1" "$((p1 + e1))" ""
  local s2=" 圆 角 简 约 -1.2 "
  local p2=$(( (w - ${#s2}) / 2 ))
  local e2=$(( (w - ${#s2}) % 2 ))
  printf "║%*s%s%*s║\n" "$p2" "" "$s2" "$((p2 + e2))" ""
  printf '║'; for ((i=0; i<w; i++)); do printf ' '; done
  printf '║\n╚'; for ((i=0; i<w; i++)); do printf '═'; done; printf '╝\n'
  echo ''
}

show_menu() {
  echo '  ┌─────────────────────────────────────────┐'
  echo '  │  1. 安装"圆角简约-1.2"fcitx5皮肤         │'
  echo '  │  2. 配置皮肤颜色                          │'
  echo '  │  3. 初始化皮肤（恢复默认）                 │'
  echo '  │  4. 卸载"圆角简约-1.2"                   │'
  echo '  │  5. 更改横竖排布局                        │'
  echo '  │  6. 退出                                  │'
  echo '  └─────────────────────────────────────────┘'
  echo ''
}

progress_bar() {
  local current=$1 total=$2
  local percent=$(( current * 100 / total ))
  local filled=$(( percent / 5 ))
  local empty=$(( 20 - filled ))
  printf '\r  ['
  for ((i=0; i<filled; i++)); do printf '█'; done
  for ((i=0; i<empty; i++)); do printf '░'; done
  printf ']  %3d%%' "$percent"
}

show_step() {
  local file=$1 path=$2
  printf '\n  %s\n' "$file"
  echo "  → $path"
  echo ''
}

create_theme_files() {
  local color="$1" save_default="${2:-false}"
  local total=9 current=0
  [[ "$save_default" == "true" ]] && total=10

  mkdir -p "$SKIN_DIR"

  current=$((current + 1))
  progress_bar $current $total
  show_step "theme.conf" "$SKIN_DIR/theme.conf"
  cat > "$SKIN_DIR/theme.conf" << THEMECONF
[Metadata]
Name=圆角简约-1.2
Name[zh_CN]=圆角简约-1.2
Name[zh_TW]=圓角簡約-1.2
Name[en]=Round Simple 1.2
Version=1.2
Author=opencode
Description=圆角简约主题
ScaleWithDPI=True

[InputPanel]
NormalColor=#e8ddd0
HighlightCandidateColor=#ffffff
HighlightColor=#ffffff
HighlightBackgroundColor=#00000000

[InputPanel/TextMargin]
Left=10
Right=10
Top=6
Bottom=6

[InputPanel/ContentMargin]
Left=6
Right=6
Top=6
Bottom=6

[InputPanel/Background]
Image=panel.svg

[InputPanel/Background/Margin]
Left=12
Right=12
Top=12
Bottom=12

[InputPanel/Highlight]
Image=highlight.svg

[InputPanel/Highlight/Margin]
Left=10
Right=10
Top=6
Bottom=6

[InputPanel/PrevPage]
Image=prev.svg

[InputPanel/PrevPage/ClickMargin]
Left=6
Right=6
Top=5
Bottom=5

[InputPanel/NextPage]
Image=next.svg

[InputPanel/NextPage/ClickMargin]
Left=6
Right=6
Top=5
Bottom=5

[Menu]
NormalColor=#e8ddd0
HighlightCandidateColor=#ffffff

[Menu/Background]
Image=panel.svg

[Menu/Background/Margin]
Left=12
Right=12
Top=12
Bottom=12

[Menu/ContentMargin]
Left=6
Right=6
Top=6
Bottom=6

[Menu/CheckBox]
Image=radio.svg

[Menu/SubMenu]
Image=arrow.svg

[Menu/Highlight]
Image=highlight.svg

[Menu/Highlight/Margin]
Left=10
Right=10
Top=6
Bottom=6

[Menu/Separator]
Color=${color}40

[Menu/TextMargin]
Left=8
Right=8
Top=5
Bottom=5

[AccentColorField]
0=Input Panel Border
1=Input Panel Highlight Candidate Background
2=Input Panel Highlight
3=Menu Border
4=Menu Separator
5=Menu Selected Item Background
THEMECONF

  current=$((current + 1))
  progress_bar $current $total
  show_step "panel.svg" "$SKIN_DIR/panel.svg"
  cat > "$SKIN_DIR/panel.svg" << SVG
<?xml version="1.0" encoding="UTF-8"?>
<svg width="48" height="48" viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
  <rect x="1.5" y="1.5" width="45" height="45" rx="10.5" ry="10.5"
        fill="#1a1a1a" stroke="${color}" stroke-width="2" />
</svg>
SVG

  current=$((current + 1))
  progress_bar $current $total
  show_step "highlight.svg" "$SKIN_DIR/highlight.svg"
  cat > "$SKIN_DIR/highlight.svg" << SVG
<?xml version="1.0" encoding="UTF-8"?>
<svg width="48" height="48" viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
  <rect x="0" y="0" width="48" height="48" rx="8" ry="6"
        fill="${color}" />
</svg>
SVG

  current=$((current + 1))
  progress_bar $current $total
  show_step "prev.svg" "$SKIN_DIR/prev.svg"
  cat > "$SKIN_DIR/prev.svg" << SVG
<?xml version="1.0" encoding="UTF-8"?>
<svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
  <path d="M14 7l-5 5 5 5" stroke="${color}" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

  current=$((current + 1))
  progress_bar $current $total
  show_step "next.svg" "$SKIN_DIR/next.svg"
  cat > "$SKIN_DIR/next.svg" << SVG
<?xml version="1.0" encoding="UTF-8"?>
<svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
  <path d="M10 7l5 5-5 5" stroke="${color}" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

  current=$((current + 1))
  progress_bar $current $total
  show_step "arrow.svg" "$SKIN_DIR/arrow.svg"
  cat > "$SKIN_DIR/arrow.svg" << SVG
<?xml version="1.0" encoding="UTF-8"?>
<svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
  <path d="M6 4l4 4-4 4" stroke="${color}" stroke-width="1.5" fill="none" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

  current=$((current + 1))
  progress_bar $current $total
  show_step "radio.svg" "$SKIN_DIR/radio.svg"
  cat > "$SKIN_DIR/radio.svg" << SVG
<?xml version="1.0" encoding="UTF-8"?>
<svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
  <rect x="1" y="1" width="14" height="14" rx="3" ry="3"
        fill="none" stroke="${color}" stroke-width="1.5" />
</svg>
SVG

  if [[ "$save_default" == "true" ]]; then
    current=$((current + 1))
    progress_bar $current $total
    show_step "保存默认备份" "$DEFAULT_BACKUP_DIR"
    rm -rf "$DEFAULT_BACKUP_DIR"
    mkdir -p "$(dirname "$DEFAULT_BACKUP_DIR")"
    cp -r "$SKIN_DIR" "$DEFAULT_BACKUP_DIR"
  fi

  current=$((current + 1))
  progress_bar $current $total
  show_step "写入 fcitx5 配置" "$CONFIG_FILE"
  if [ -f "$CONFIG_FILE" ]; then
    if grep -q "^Theme=" "$CONFIG_FILE"; then
      sed -i "s/^Theme=.*/Theme=round-simple-1.2/" "$CONFIG_FILE"
    else
      echo "Theme=round-simple-1.2" >> "$CONFIG_FILE"
    fi
    sed -i 's/^UseAccentColor=.*/UseAccentColor=False/' "$CONFIG_FILE"
  fi

  current=$((current + 1))
  progress_bar $current $total
  show_step "重启 fcitx5" ""
  pkill fcitx5 2>/dev/null
  sleep 1
  fcitx5 -d >/dev/null 2>&1 &

  echo ''
  progress_bar $total $total
  echo ''
  echo ''
  echo '  ✔ 安装完成'
  echo '  （如需自动跟随 noctalia 主题颜色，请选择「2. 配置皮肤颜色」注册）'
}

backup_theme() {
  if [ -d "$SKIN_DIR" ]; then
    rm -rf "$BACKUP_DIR"
    cp -r "$SKIN_DIR" "$BACKUP_DIR"
  fi
}

restore_backup() {
  if [ ! -d "$DEFAULT_BACKUP_DIR" ]; then
    echo "  ✖ 未找到默认备份，请先安装皮肤"
    return 1
  fi
  local total=4 current=0

  current=$((current + 1))
  progress_bar $current $total
  show_step "删除当前皮肤" "$SKIN_DIR"
  rm -rf "$SKIN_DIR"

  current=$((current + 1))
  progress_bar $current $total
  show_step "恢复默认备份" "$DEFAULT_BACKUP_DIR → $SKIN_DIR"
  cp -r "$DEFAULT_BACKUP_DIR" "$SKIN_DIR"

  current=$((current + 1))
  progress_bar $current $total
  show_step "写入 fcitx5 配置" "$CONFIG_FILE"
  if [ -f "$CONFIG_FILE" ]; then
    if grep -q "^Theme=" "$CONFIG_FILE"; then
      sed -i "s/^Theme=.*/Theme=round-simple-1.2/" "$CONFIG_FILE"
    else
      echo "Theme=round-simple-1.2" >> "$CONFIG_FILE"
    fi
    sed -i 's/^UseAccentColor=.*/UseAccentColor=False/' "$CONFIG_FILE"
  fi

  current=$((current + 1))
  progress_bar $current $total
  show_step "重启 fcitx5" ""
  pkill fcitx5 2>/dev/null
  sleep 1
  fcitx5 -d >/dev/null 2>&1 &

  echo ''
  progress_bar $total $total
  echo ''
  echo ''
  echo '  ✔ 已恢复默认参数'
}

unregister_templates() {
  if [ -f "$NOCTALIA_CONFIG" ]; then
    awk '
      /^\[theme\.templates\.user\.round_simple_/ { skip = 1; next }
      skip && /^\[/ { skip = 0 }
      skip { next }
      { print }
    ' "$NOCTALIA_CONFIG" > "$NOCTALIA_CONFIG.tmp" && mv "$NOCTALIA_CONFIG.tmp" "$NOCTALIA_CONFIG"
  fi
  rm -rf "$TEMPLATES_DIR"
}

noctalia_registered() {
  [ -f "$NOCTALIA_CONFIG" ] && grep -q '^\[theme\.templates\.user\.round_simple_' "$NOCTALIA_CONFIG"
}

install_templates() {
  local total=4 current=0

  current=$((current + 1))
  progress_bar $current $total
  show_step "注销旧模板注册" "$NOCTALIA_CONFIG"
  unregister_templates

  current=$((current + 1))
  progress_bar $current $total
  show_step "安装模板文件" "$TEMPLATES_DIR/"
  mkdir -p "$TEMPLATES_DIR"
  cat > "$TEMPLATES_DIR/theme.conf" << 'TMPL'
[Metadata]
Name=圆角简约-1.2
Name[zh_CN]=圆角简约-1.2
Name[zh_TW]=圓角簡約-1.2
Name[en]=Round Simple 1.2
Version=1.2
Author=opencode
Description=圆角简约主题（Noctalia 模板版）
ScaleWithDPI=True

[InputPanel]
NormalColor={{ colors.on_surface.default.hex }}
HighlightCandidateColor={{ colors.on_primary.default.hex }}
HighlightColor={{ colors.on_primary.default.hex }}
HighlightBackgroundColor=#00000000

[InputPanel/TextMargin]
Left=10
Right=10
Top=6
Bottom=6

[InputPanel/ContentMargin]
Left=6
Right=6
Top=6
Bottom=6

[InputPanel/Background]
Image=panel.svg

[InputPanel/Background/Margin]
Left=12
Right=12
Top=12
Bottom=12

[InputPanel/Highlight]
Image=highlight.svg

[InputPanel/Highlight/Margin]
Left=10
Right=10
Top=6
Bottom=6

[InputPanel/PrevPage]
Image=prev.svg

[InputPanel/PrevPage/ClickMargin]
Left=6
Right=6
Top=5
Bottom=5

[InputPanel/NextPage]
Image=next.svg

[InputPanel/NextPage/ClickMargin]
Left=6
Right=6
Top=5
Bottom=5

[Menu]
NormalColor={{ colors.on_surface.default.hex }}
HighlightCandidateColor={{ colors.on_primary.default.hex }}

[Menu/Background]
Image=panel.svg

[Menu/Background/Margin]
Left=12
Right=12
Top=12
Bottom=12

[Menu/ContentMargin]
Left=6
Right=6
Top=6
Bottom=6

[Menu/CheckBox]
Image=radio.svg

[Menu/SubMenu]
Image=arrow.svg

[Menu/Highlight]
Image=highlight.svg

[Menu/Highlight/Margin]
Left=10
Right=10
Top=6
Bottom=6

[Menu/Separator]
Color={{ colors.outline_variant.default.hex }}40

[Menu/TextMargin]
Left=8
Right=8
Top=5
Bottom=5

[AccentColorField]
0=Input Panel Border
1=Input Panel Highlight Candidate Background
2=Input Panel Highlight
3=Menu Border
4=Menu Separator
5=Menu Selected Item Background
TMPL
  cat > "$TEMPLATES_DIR/panel.svg" << 'TMPL'
<?xml version="1.0" encoding="UTF-8"?>
<svg width="48" height="48" viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
  <rect x="1.5" y="1.5" width="45" height="45" rx="10.5" ry="10.5"
        fill="{{ colors.surface_container_lowest.default.hex }}" stroke="{{ colors.primary.default.hex }}" stroke-width="2" />
</svg>
TMPL
  cat > "$TEMPLATES_DIR/highlight.svg" << 'TMPL'
<?xml version="1.0" encoding="UTF-8"?>
<svg width="48" height="48" viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
  <rect x="0" y="0" width="48" height="48" rx="8" ry="6"
        fill="{{ colors.primary.default.hex }}" />
</svg>
TMPL
  cat > "$TEMPLATES_DIR/prev.svg" << 'TMPL'
<?xml version="1.0" encoding="UTF-8"?>
<svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
  <path d="M14 7l-5 5 5 5" stroke="{{ colors.primary.default.hex }}" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
TMPL
  cat > "$TEMPLATES_DIR/next.svg" << 'TMPL'
<?xml version="1.0" encoding="UTF-8"?>
<svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
  <path d="M10 7l5 5-5 5" stroke="{{ colors.primary.default.hex }}" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
TMPL
  cat > "$TEMPLATES_DIR/arrow.svg" << 'TMPL'
<?xml version="1.0" encoding="UTF-8"?>
<svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
  <path d="M6 4l4 4-4 4" stroke="{{ colors.primary.default.hex }}" stroke-width="1.5" fill="none" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
TMPL
  cat > "$TEMPLATES_DIR/radio.svg" << 'TMPL'
<?xml version="1.0" encoding="UTF-8"?>
<svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
  <rect x="1" y="1" width="14" height="14" rx="3" ry="3"
        fill="none" stroke="{{ colors.primary.default.hex }}" stroke-width="1.5" />
</svg>
TMPL

  current=$((current + 1))
  progress_bar $current $total
  show_step "注册 noctalia 模板" "$NOCTALIA_CONFIG"
  mkdir -p "$(dirname "$NOCTALIA_CONFIG")"
  printf '\n' >> "$NOCTALIA_CONFIG"
  cat >> "$NOCTALIA_CONFIG" << TOML
[theme.templates.user.round_simple_theme]
index = 0
input_path = "$TEMPLATES_DIR/theme.conf"
output_path = "$SKIN_DIR/theme.conf"

[theme.templates.user.round_simple_panel]
index = 1
input_path = "$TEMPLATES_DIR/panel.svg"
output_path = "$SKIN_DIR/panel.svg"

[theme.templates.user.round_simple_highlight]
index = 2
input_path = "$TEMPLATES_DIR/highlight.svg"
output_path = "$SKIN_DIR/highlight.svg"

[theme.templates.user.round_simple_prev]
index = 3
input_path = "$TEMPLATES_DIR/prev.svg"
output_path = "$SKIN_DIR/prev.svg"

[theme.templates.user.round_simple_next]
index = 4
input_path = "$TEMPLATES_DIR/next.svg"
output_path = "$SKIN_DIR/next.svg"

[theme.templates.user.round_simple_arrow]
index = 5
input_path = "$TEMPLATES_DIR/arrow.svg"
output_path = "$SKIN_DIR/arrow.svg"

[theme.templates.user.round_simple_radio]
index = 6
input_path = "$TEMPLATES_DIR/radio.svg"
output_path = "$SKIN_DIR/radio.svg"
post_hook = "pkill fcitx5; sleep 1; fcitx5 -d >/dev/null 2>&1 &"
TOML

  current=$((current + 1))
  progress_bar $current $total
  show_step "渲染模板（noctalia）" ""
  if command -v noctalia >/dev/null 2>&1 && noctalia msg config-reload >/dev/null 2>&1; then
    echo '  → 已按当前主题渲染，fcitx5 已重启'
  else
    echo '  ⚠ noctalia 未运行，模板将在下次主题切换时自动生效'
    echo '  （可手动重启 fcitx5 应用皮肤）'
  fi

  echo ''
  progress_bar $total $total
  echo ''
  echo ''
  echo '  ✔ 已注册 noctalia 自动颜色'
}

manual_color() {
  echo ''
  echo '  ── 手动选择颜色 ──'
  echo ''
  if noctalia_registered; then
    echo '  ⚠ 当前已注册 noctalia 模板，手动选色将先注销模板'
    echo ''
  fi
  echo "  当前主题色: $ACCENT"
  echo ''
  read -p "  请输入新的十六进制颜色码 (如 #ff6633): " new_color </dev/tty
  echo ''
  if ! validate_color "$new_color"; then
    echo '  ✖ 格式错误，请输入 #XXXXXX 格式'
    return 1
  fi
  echo '  ── 应用手动颜色 ──'
  echo ''
  if noctalia_registered; then
    echo '  → 注销 noctalia 模板'
    unregister_templates
    echo ''
  fi
  ACCENT="$new_color"
  create_theme_files "$ACCENT" false
  echo ''
  return 0
}

color_menu() {
  while true; do
    clear
    echo ''
    echo '  ── 配置皮肤颜色 ──'
    echo ''
    if noctalia_registered; then
      echo '  1. 注册 noctalia template 自动颜色功能  [✓]'
      echo '  2. 手动选择颜色                         '
      echo '  3. 返回主菜单'
    else
      echo '  1. 注册 noctalia template 自动颜色功能'
      echo '  2. 手动选择颜色                         [✓]'
      echo '  3. 返回主菜单'
    fi
    echo ''
    printf "  请输入选项 [1-3]: "
    read -r choice </dev/tty

    case "$choice" in
      1)
        clear
        echo ''
        echo '  ── 注册 noctalia 自动颜色 ──'
        echo ''
        install_templates
        echo ''
        press_esc_to_exit
        ;;
      2)
        clear
        manual_color
        echo ''
        press_esc_to_exit
        ;;
      3)
        return
        ;;
    esac
  done
}

layout_is_vertical() {
  [ -f "$CONFIG_FILE" ] && grep -q '^Vertical Candidate List=True' "$CONFIG_FILE"
}

set_layout() {
  local mode="$1"
  local label value
  if [ "$mode" = "vertical" ]; then
    label="竖排"
    value="True"
  else
    label="横排"
    value="False"
  fi
  local total=3 current=0

  current=$((current + 1))
  progress_bar $current $total
  show_step "修改 fcitx5 配置" "$CONFIG_FILE"
  if [ -f "$CONFIG_FILE" ]; then
    if grep -q '^Vertical Candidate List=' "$CONFIG_FILE"; then
      sed -i "s/^Vertical Candidate List=.*/Vertical Candidate List=$value/" "$CONFIG_FILE"
    else
      echo "Vertical Candidate List=$value" >> "$CONFIG_FILE"
    fi
  fi

  current=$((current + 1))
  progress_bar $current $total
  show_step "重启 fcitx5" ""
  pkill fcitx5 2>/dev/null
  sleep 1
  fcitx5 -d >/dev/null 2>&1 &

  echo ''
  progress_bar $total $total
  echo ''
  echo ''
  echo "  ✔ 已切换为${label}布局"
}

layout_menu() {
  while true; do
    clear
    echo ''
    echo '  ── 更改横竖排布局 ──'
    echo ''
    if layout_is_vertical; then
      echo '  1. 竖排布局                            [✓]'
      echo '  2. 横排布局'
    else
      echo '  1. 竖排布局'
      echo '  2. 横排布局                            [✓]'
    fi
    echo '  3. 返回主菜单'
    echo ''
    printf "  请输入选项 [1-3]: "
    read -r choice </dev/tty

    case "$choice" in
      1)
        clear
        echo ''
        echo '  ── 切换为竖排布局 ──'
        echo ''
        set_layout vertical
        echo ''
        press_esc_to_exit
        ;;
      2)
        clear
        echo ''
        echo '  ── 切换为横排布局 ──'
        echo ''
        set_layout horizontal
        echo ''
        press_esc_to_exit
        ;;
      3)
        return
        ;;
    esac
  done
}

uninstall_theme() {
  local total=5 current=0

  current=$((current + 1))
  progress_bar $current $total
  show_step "删除皮肤目录" "$SKIN_DIR"
  rm -rf "$SKIN_DIR"

  current=$((current + 1))
  progress_bar $current $total
  show_step "删除默认备份" "$DEFAULT_BACKUP_DIR"
  rm -rf "$DEFAULT_BACKUP_DIR"

  current=$((current + 1))
  progress_bar $current $total
  show_step "注销 noctalia 模板" "$NOCTALIA_CONFIG"
  unregister_templates

  current=$((current + 1))
  progress_bar $current $total
  show_step "恢复 fcitx5 配置" "$CONFIG_FILE"
  if [ -f "$CONFIG_FILE" ]; then
    sed -i 's/^Theme=round-simple-1.2/Theme=default/' "$CONFIG_FILE"
  fi

  current=$((current + 1))
  progress_bar $current $total
  show_step "重启 fcitx5" ""
  pkill fcitx5 2>/dev/null
  sleep 1
  fcitx5 -d >/dev/null 2>&1 &

  echo ''
  progress_bar $total $total
  echo ''
  echo ''
  echo '  ✔ 已卸载'
}

validate_color() {
  [[ "$1" =~ ^#[0-9A-Fa-f]{6}$ ]]
}

press_esc_to_exit() {
  printf '  按 ESC 返回菜单...'
  while true; do
    read -rsn1 _key < /dev/tty
    [[ $_key == $'\x1b' ]] && break
  done
}

# ========== Main ==========

clear
while true; do
  show_banner
  show_menu
  printf "  请输入选项 [1-6]: "
  read -r choice </dev/tty

  case "$choice" in
    1)
      clear
      echo ''
      echo '  ── 安装中 ──'
      echo ''
      if [ -d "$SKIN_DIR" ]; then
        read -p "  皮肤已存在，是否覆盖？(y/n): " confirm </dev/tty
        if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
          echo ''
          press_esc_to_exit
          continue
        fi
        clear
        echo ''
        echo '  ── 安装中 ──'
        echo ''
      fi
      create_theme_files "$ACCENT" true
      echo ''
      press_esc_to_exit
      ;;
    2)
      color_menu
      ;;
    3)
      clear
      echo ''
      echo '  ── 初始化皮肤 ──'
      echo ''
      if restore_backup; then
        ACCENT="#b0947c"
      fi
      echo ''
      press_esc_to_exit
      ;;
    4)
      clear
      echo ''
      echo '  ── 卸载中 ──'
      echo ''
      if [ ! -d "$SKIN_DIR" ]; then
        echo '  皮肤未安装'
      else
        uninstall_theme
      fi
      echo ''
      press_esc_to_exit
      ;;
    5)
      layout_menu
      ;;
    6)
      clear
      echo ''
      echo '  再见！'
      exit 0
      ;;
    *)
      press_esc_to_exit
      ;;
  esac
  clear
done
