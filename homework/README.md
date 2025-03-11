# Typst

## 安装及使用

`Typst`是一种介于`Latex`和`markdown`之间的标记型语言：兼具`Latex`的表现力和`markdown`的易用性。安装请参照[官方仓库](https://github.com/typst/typst/tree/main)。一般很容易操作：

> 引用官网安装文档如下：

- You can install Typst through different package managers. Note that the
  versions in the package managers might lag behind the latest release.
  - Linux: 
      - View [Typst on Repology][repology]
      - View [Typst's Snap][snap]
  - macOS: `brew install typst`
  - Windows: `winget install --id Typst.Typst`

- If you have a [Rust][rust] toolchain installed, you can install
  - the latest released Typst version with
    `cargo install --locked typst-cli`
  - a development version with
    `cargo install --git https://github.com/typst/typst --locked typst-cli`

安装后`Typst`后，无需再安装其他组件，直接到`homework`目录下执行：

```
typst compile ./homework.typ ./homework.pdf
```

即可生成`homework.pdf`文档。渲染所需要的其他样式文件会直接下载。

## 其他资源

`homework`示例文件使用[ichigo](https://github.com/pku-typst/ichigo)模版形成。很多高校都产出了基于`Typeset`的论文模版，如[pkuthss-typst](https://github.com/pku-typst/pkuthss-typst)。


[repology]: https://repology.org/project/typst/versions
[snap]: https://snapcraft.io/typst
[rust]: https://rustup.rs/
