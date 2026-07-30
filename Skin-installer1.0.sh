#!/bin/bash

SKIN_DIR="$HOME/.local/share/fcitx5/themes/round-simple"
DEFAULT_BACKUP_DIR="$HOME/.local/share/fcitx5/Starwhite_themes_backup"
CONFIG_FILE="$HOME/.config/fcitx5/conf/classicui.conf"
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
  done < <(echo "Round Simple")
  printf '║'; for ((i=0; i<w; i++)); do printf ' '; done; printf '║\n'
  local s1="Fcitx5 Skin"
  local p1=$(( (w - ${#s1}) / 2 ))
  local e1=$(( (w - ${#s1}) % 2 ))
  printf "║%*s%s%*s║\n" "$p1" "" "$s1" "$((p1 + e1))" ""
  local s2="  圆 角 简 约  "
  local p2=$(( (w - ${#s2}) / 2 ))
  local e2=$(( (w - ${#s2}) % 2 ))
  printf "║%*s%s%*s║\n" "$p2" "" "$s2" "$((p2 + e2))" ""
  printf '║'; for ((i=0; i<w; i++)); do printf ' '; done
  printf '║\n╚'; for ((i=0; i<w; i++)); do printf '═'; done; printf '╝\n'
  echo ''
}

show_menu() {
  echo '  ┌─────────────────────────────────────────┐'
  echo '  │  1. 安装"圆角简约"fcitx5皮肤             │'
  echo '  │  2. 配置皮肤颜色                          │'
  echo '  │  3. 初始化皮肤（恢复默认）                 │'
  echo '  │  4. 卸载"圆角简约"                       │'
  echo '  │  5. 退出                                  │'
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
Name=圆角简约
Name[zh_CN]=圆角简约
Name[zh_TW]=圓角簡約
Name[en]=Round Simple
Version=1.0
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
  <rect x="0.5" y="0.5" width="47" height="47" rx="10" ry="10"
        fill="#1a1a1a" stroke="${color}" stroke-width="1" />
</svg>
SVG

  current=$((current + 1))
  progress_bar $current $total
  show_step "highlight.svg" "$SKIN_DIR/highlight.svg"
  cat > "$SKIN_DIR/highlight.svg" << SVG
<?xml version="1.0" encoding="UTF-8"?>
<svg width="48" height="48" viewBox="0 0 48 48" xmlns="http://www.w3.org/2000/svg">
  <rect x="0" y="0" width="48" height="48" rx="8" ry="8"
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
    cp -r "$SKIN_DIR" "$DEFAULT_BACKUP_DIR"
  fi

  current=$((current + 1))
  progress_bar $current $total
  show_step "写入 fcitx5 配置" "$CONFIG_FILE"
  if [ -f "$CONFIG_FILE" ]; then
    if grep -q "^Theme=" "$CONFIG_FILE"; then
      sed -i "s/^Theme=.*/Theme=round-simple/" "$CONFIG_FILE"
    else
      echo "Theme=round-simple" >> "$CONFIG_FILE"
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
      sed -i "s/^Theme=.*/Theme=round-simple/" "$CONFIG_FILE"
    else
      echo "Theme=round-simple" >> "$CONFIG_FILE"
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

uninstall_theme() {
  local total=4 current=0

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
  show_step "恢复 fcitx5 配置" "$CONFIG_FILE"
  if [ -f "$CONFIG_FILE" ]; then
    sed -i 's/^Theme=round-simple/Theme=default/' "$CONFIG_FILE"
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
  printf "  请输入选项 [1-5]: "
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
      clear
      echo ''
      echo '  ── 配置颜色 ──'
      echo ''
      echo "  当前主题色: $ACCENT"
      echo ''
      read -p "  请输入新的十六进制颜色码 (如 #ff6633): " new_color </dev/tty
      echo ''
      if validate_color "$new_color"; then
        ACCENT="$new_color"
        create_theme_files "$ACCENT" false
        echo ''
      else
        echo '  ✖ 格式错误，请输入 #XXXXXX 格式'
      fi
      press_esc_to_exit
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
