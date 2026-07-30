# 圆角简约 / Round Simple

一款简约、圆角风格的 [Fcitx5](https://github.com/fcitx/fcitx5) 输入法皮肤。

A simple, rounded-corner theme for [Fcitx5](https://github.com/fcitx/fcitx5).

## 预览 / Preview

| 输入面板 / Input Panel | 右键菜单 / Context Menu |
|---|---|
| ![panel](panel.svg) | ![menu](arrow.svg) |

（实际渲染效果取决于输入法引擎和字体设置）

## 特性 / Features

- 深色面板 + 金棕色点缀 — 护眼且美观
- 全 SVG 图标 — 无锯齿，适配高 DPI
- 圆角设计 — 面板圆角 10px，高亮块圆角 8px
- 支持 `ScaleWithDPI` — 在多屏缩放环境下表现良好
- 支持 AccentColor — 可与 KDE 等桌面环境的强调色联动

## 安装 / Installation

### 一键安装脚本

附带交互式安装程序 `Skin-installer`，提供菜单式操作：

```bash
chmod +x "Skin-installer"
./Skin-installer
```

- **1. 安装** — 部署皮肤并启用，首次安装时创建默认备份
- **2. 配置颜色** — 自定义主题强调色（十六进制）
- **3. 初始化皮肤** — 从默认备份恢复初始参数
- **4. 卸载** — 删除皮肤和默认备份，恢复默认主题
- 安装/配置后自动重启 fcitx5

### 默认备份路径

首次安装时自动备份至：

```
~/.local/share/fcitx5/Starwhite_themes_backup/
```

## 文件结构 / File Structure

```
round-simple/
├── theme.conf       # 主题配置文件
├── panel.svg        # 面板背景（深色圆角矩形）
├── highlight.svg    # 候选词高亮背景
├── prev.svg         # 上一页箭头
├── next.svg         # 下一页箭头
├── arrow.svg        # 子菜单箭头
├── radio.svg        # 复选框图标
├── Skin-installer1.0     # 一键安装脚本
├── Skin-installer1.0.md5 # 脚本校验值
└── README.md
```

## 配色 / Color Palette

| 用途 | 颜色 |
|---|---|
| 面板背景 | `#1a1a1a` |
| 面板边框 | `#b0947c` |
| 高亮背景 | `#b0947c` |
| 普通文字 | `#e8ddd0` |
| 高亮文字 | `#ffffff` |
| 分隔线 | `#b0947c40` |

## 许可 / License

MIT
