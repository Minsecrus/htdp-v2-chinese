# 《如何设计程序（第2版）》(HtDP 2e) 中文翻译与 LaTeX 排版规范

## 1. 核心术语对照表 (Terminology)
- **How to Design Programs**: 如何设计程序
- **Design Recipe**: 设计配方
- **Beginning Student Language (BSL)**: 初学学生语言（BSL）
- **Intermediate Student Language (ISL)**: 中级学生语言（ISL）
- **Advanced Student Language (ASL)**: 高级学生语言（ASL）
- **Signature**: 签名（函数输入与输出类型的声明）
- **Purpose Statement**: 目的说明
- **Header**: 函数头
- **Functional Examples**: 功能示例 / 样例
- **Template**: 模板
- **Fixed-Size Data**: 固定大小的数据
- **Arbitrarily Large Data**: 任意大小的数据
- **Itemization**: 分类 / 分项数据
- **Enumeration**: 枚举
- **Interval**: 区间
- **Structure / posn**: 结构体 / posn 结构体
- **Self-referential / Structural Recursion**: 自引用 / 结构化递归
- **Generative Recursion**: 生成式递归
- **Accumulator / Accumulator-Style**: 累加器 / 累加器风格
- **Intermezzo**: 插曲
- **Finger Exercise**: 基础练习 / 指尖练习
- **Definitions Area**: 定义区（DrRacket 上半部分）
- **Interactions Area**: 交互区 / REPL（DrRacket 下半部分）
- **Clause**: 条件分支 / 条件从句
- **Predicate**: 谓词
- **World Program**: 世界程序（基于 big-bang 的交互式动画程序）

## 2. LaTeX 环境使用规范
1. **设计配方**:
   ```latex
   \begin{recipebox}{设计配方标题}
   步骤说明...
   \end{recipebox}
   ```
2. **练习题**:
   ```latex
   \begin{exercise}{练习标题}{ex:1_1}
   练习题正文...
   \end{exercise}
   ```
3. **重点提示 / 核心概念**:
   ```latex
   \begin{notebox}[标题]
   提示或重要思考...
   \end{notebox}
   ```
4. **DrRacket 交互窗口输出**:
   ```latex
   \begin{replbox}
   > (+ 1 2)
   3
   > "hello world"
   "hello world"
   \end{replbox}
   ```
5. **代码块 (BSL/Scheme/Racket)**:
   ```latex
   \begin{lstlisting}[language=BSL]
   ; 华氏度转摄氏度
   (define (f2c f)
     (* 5/9 (- f 32)))
   \end{lstlisting}
   ```
6. **行内代码与术语**:
   - 行内代码：`\code{(+ 1 2)}`
   - 专业术语加粗：`\term{设计配方}`
7. **图片引用**:
   - 原始 EPUB 中的 `.gif` 均已转换为 `.png`，存放在 `images/` 目录下。
   - 引用时：
     ```latex
     \begin{figure}[htbp]
       \centering
       \includegraphics[width=0.75\textwidth]{images/00001.png} % 若原图为 jpeg 则使用 .jpeg
       \caption{图片说明}
       \label{fig:xxx}
     \end{figure}
     ```
8. **排版细节**:
   - 中英文之间保持适当空格或由 XeCJK 自动处理。
   - 专有名词保留英文首字母或括号附注（如 DrRacket, Racket, BSL, big-bang）。
   - 注意 LaTeX 特殊字符转义：`#` 写作 `\#`，`_` 写作 `\_` 等（代码块内除外）。
