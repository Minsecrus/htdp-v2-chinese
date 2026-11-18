# 程序设计方法 (How to Design Programs, Second Edition) 中文排版

本书基于麻省理工学院出版社（MIT Press）出版的计算机科学经典名著《How to Design Programs: An Introduction to Programming and Computing》（Second Edition），由 **Minsecrus** 进行全书中文翻译与高质量现代化 \LaTeX{} 紧凑双栏重排。

---

## 📖 项目特色

- **完整全书收录**：完整翻译并收录全书 42 个章节/插曲（Intermezzo）、全部 528 道练习题与全部原版图表。
- **现代化紧凑双栏排版**：
  - 全局 9pt（小五号）正文，兼具极佳的行长与信息密度；
  - 目录区域独立采用 2.4cm 留白居中布局，阅读舒适典雅；
  - 正文采用 0.8cm 边距双栏开阔版心，去除栏间中线，代码块与练习环境全自动限宽自适应；
  - 原书近 800 页体量精炼重构为紧凑双栏版面。
- **严谨的引用与编号系统**：
  - 全书图表严格遵循 `图 <章号>.<图号>` 与 `图 I<插曲号>.<图号>` 独立编号体系；
  - 零未定义交叉引用（0 undefined references），点击目录或图表引用均可精确跳转。

---

## 🛠️ 编译说明

本项目基于 **XeLaTeX** + **ctex** 中文宏包进行编译。

### 依赖环境
- TeX 发行版（推荐 TeX Live 2023+ 或 MikTeX）；
- 操作系统自带中文字体（如 Windows SimSun、FangSong、KaiTi 等）。

### 一键编译
- **Windows CMD**：直接双击或在命令行运行 `build.bat`；
- **PowerShell**：执行 `./build.ps1`；
- **手动双遍编译**：
  ```bash
  xelatex -interaction=nonstopmode -jobname=程序设计方法 main.tex
  xelatex -interaction=nonstopmode -jobname=程序设计方法 main.tex
  ```
  编译完成后将在当前目录下输出 `程序设计方法.pdf`。

---

## 📁 项目结构

```text
htdp_tex/
├── chapters/          # 全书章节源码（part01 ~ part06、插曲与前后言）
├── images/            # 原版插图与矢量图表资源
├── raw_xhtml/         # 原版 XHTML 结构参考
├── source_text/       # 原著提取源文本
├── main.tex           # 主控入口文件
├── preamble.tex       # 宏包配置、字号几何、色彩与定理环境样式定义
├── STYLE_GUIDE.md     # 术语对照与排版规范参考
├── build.bat          # 一键构建脚本 (Batch)
├── build.ps1          # 一键构建脚本 (PowerShell)
└── 程序设计方法.pdf   # 编译成品交付文件
```

---

## 声明

本书原版著作权归原作者（Matthias Felleisen, Robert Bruce Findler, Matthew Flatt, Shriram Krishnamurthi）及麻省理工学院出版社（MIT Press）所有。本项目仅供个人学习、教学研讨与学术交流用途，严禁用于任何商业营利目的。
