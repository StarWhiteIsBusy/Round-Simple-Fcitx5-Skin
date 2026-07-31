# 圆角简约 / Round Simple

一款简约、圆角风格的 [Fcitx5](https://github.com/fcitx/fcitx5) 输入法皮肤，深度集成 [Noctalia](https://noctalia.app) 主题引擎，可自动跟随桌面主题的 Material You 配色。

A simple, rounded-corner theme for [Fcitx5](https://github.com/fcitx/fcitx5), with built-in [Noctalia](https://noctalia.app) Material You integration.

使用DeepSeek v4 辅助编程（opencode平台）

## 预览 / Preview

| 输入面板 / Input Panel | 右键菜单 / Context Menu |
|---|---|
| ![panel](panel.svg) | ![arrow](arrow.svg) |

（实际渲染效果取决于输入法引擎和字体设置）

## 特性 / Features

- 深色面板 + 金棕色点缀 — 护眼且美观
- Noctalia 模板联动 — 自动跟随系统 Material You 配色，也支持手动指定颜色
- 全 SVG 图标 — 无锯齿，适配高 DPI
- 圆角设计 — 面板圆角 10px，高亮块圆角 8px
- 精致描边 — 1.5x 分数缩放下边缘依然清晰
- 支持 `ScaleWithDPI` — 在多屏缩放环境下表现良好
- 支持 `AccentColor` — 可与 KDE 等桌面环境的强调色联动
- 横竖排布局可切换 — 面板一行命令切换候选词横排 / 竖排

## 环境要求 / Requirements

- [Fcitx5](https://github.com/fcitx/fcitx5)
- [Noctalia](https://noctalia.app)（可选）— 未安装时自动回退为手动选色

## 安装 / Installation

### 远程一键安装（推荐）

无需下载文件，一行命令直接运行：

```bash
curl -fsSL https://raw.githubusercontent.com/StarWhiteIsBusy/Round-Simple-Fcitx5-Skin/refs/heads/main/installer-history/Skin-installer1.2.sh | bash
```

### 本地一键安装脚本

运行附带的交互式安装程序 `Skin-installer1.2`：

```bash
chmod +x "Skin-installer1.2"
./Skin-installer1.2
```

也可以直接双击脚本（系统通过 shebang 嗅探为 shell 脚本，默认经 kitty 打开并在 shell 中运行，与旧版行为一致）。

安装程序提供菜单式操作：

```
  1. 安装"圆角简约-1.2"fcitx5皮肤    部署皮肤并启用，首次安装创建默认备份
  2. 配置皮肤颜色                    注册 noctalia 模板（自动配色）或手动选色
  3. 初始化皮肤（恢复默认）          从默认备份恢复初始参数
  4. 卸载"圆角简约-1.2"             删除皮肤和默认备份，注销模板，恢复默认主题
  5. 更改横竖排布局                  子菜单选择横排 / 竖排（当前项带 ✓）
  6. 退出
```

- **更改横竖排布局**：选择后清屏显示 `1. 竖排布局` / `2. 横排布局`，当前生效项标有 `[✓]`；切换即修改 `classicui.conf` 的 `Vertical Candidate List` 并自动重启 fcitx5，按 ESC 返回菜单
- 安装 / 配置 / 切换布局后自动重启 fcitx5

### 手动切换横竖排

不运行安装程序时，可自行编辑：

```
~/.config/fcitx5/conf/classicui.conf
```

- `Vertical Candidate List=True` — 竖排
- `Vertical Candidate List=False` — 横排

修改后重启 fcitx5：`pkill fcitx5; sleep 1; fcitx5 -d`

### 默认备份路径

首次安装时自动备份至：

```
~/.local/share/fcitx5/Starwhite_themes_backup/
```

## 文件结构 / File Structure

```
round-simple-v2/
├── theme.conf            # 主题配置文件
├── panel.svg             # 面板背景（深色圆角矩形 + 精致描边）
├── highlight.svg         # 候选词高亮背景
├── prev.svg              # 上一页箭头
├── next.svg              # 下一页箭头
├── arrow.svg             # 子菜单箭头
├── radio.svg             # 复选框图标
├── templates/            # noctalia 模板（安装时注册到主题引擎）
│   ├── theme.conf
│   └── *.svg
├── Skin-installer1.2     # 一键安装脚本（无扩展名，可直接双击）
├── Skin-installer1.2.sh  # 与 Skin-installer1.2 内容完全一致
├── Skin-installer1.2.md5 # 脚本校验值（校验 Skin-installer1.2）
└── README.md
```

校验安装脚本：

```bash
md5sum -c Skin-installer1.2.md5
```

## 初始配色 / Starting Color Palette （针对于手动配色）

| 用途 | 颜色 |
|---|---|
| 面板背景 | `#1a1a1a` |
| 面板边框 | `#b0947c` |
| 高亮背景 | `#b0947c` |
| 普通文字 | `#e8ddd0` |
| 高亮文字 | `#ffffff` |
| 分隔线 | `#b0947c40` |

注册 noctalia 模板后，上述颜色自动替换为系统主题的对应色阶（`primary` / `surface_container_lowest` / `on_surface` / `on_primary` / `outline_variant`）。

## 许可 / License

MIT
