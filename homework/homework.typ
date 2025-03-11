#import "@preview/ichigo:0.2.0": config, prob
#import "@preview/algo:0.3.6": algo, i, d, comment, code
#import "@preview/ctheorems:1.1.3": *

#show: thmrules.with(qed-symbol: $square$)
#let proof = thmproof("proof", "证明")

#show: config.with(
    course-name: "算法设计与分析",
    serial-str: "第 1 次作业",
    author-info: [
        #grid(
            columns: (1fr, 1fr, 1fr),
            align(center)[
                姓名：Someone
            ],
            align(center)[
                学号：xxxxxxxxxx
            ],
            align(center)[
                日期：2025年3月10日
            ]
        )
    ],
    author-names: "Someone",
    title-style: "simple",
    theme-name: "simple",
    heading-numberings: (("{1}"), none, ("{3:1}"), ("{4:(1)}")),
)

#set text(lang: "zh")

#outline() // 设置目录

#prob(title: "1.1")[
    设A是n个不等数的数组，n>2.以比较作为基本运算，是给出一个$upright("O")(1)$时间的算法，找出A中一个既不是最大也不是最小的数.写出算法的伪码，说明该算法最坏情况下执行的比较次数。
][
    算法：Fib(n)
    \
    #algo(
        title: "Fib",
        parameters: ("n",)
    )[
        if $n < 0$:#i\        // use #i to indent the following lines
        return null#d\      // use #d to dedent the following lines
        if $n = 0$ or $n = 1$:#i #comment[you can also]\
        return $n$#d #comment[add comments!]\
        return #smallcaps("Fib")$(n-1) +$ #smallcaps("Fib")$(n-2)$
    ]
]


#prob(title: "1.11")[
    证明定理1.3：假设$f$和$g$是定义域为自然数集合的函数，若对某个其他函数$h$，有$f=upright("O")(h)$和$g=upright("O")(h)$成立，那么$f+g=upright("O")(h)$.
][
    #proof[
        For any $n > 2$, consider $
            n! + 2, quad n! + 3, quad ..., quad n! + n #qedhere
        $
    ]
]

#prob(title: "1.14")[
    设x为实数，n，a，b为整数，证明下述性质.
    == $x-1 < floor(x) <= x <= ceil(x) < x+1$
    == $floor(x+n)=floor(x)+n, ceil(x+n)=ceil(x)+n$.
    == $ceil(n/2)+ceil(n/2)=n$.
    == $ceil(ceil(n\/a)/b) = ceil(n/(a b)), floor(floor(n\/a)/b) = floor(n/(a b))$.
][
    ==
    待解决
    ==
    待解决
    ==
    待解决
    ==
    待解决
]

#prob(title: "1.18")[
    对以下函数，按照它们的阶从高到低排列；如果$f(n)$与$g(n)$的阶相等，表示为$f(n)=upright(theta)(g(n))$.
    $ 2^sqrt(2 log(n)),quad n log(n),quad sum_(k=1)^n 1/k,quad n 2^n,quad (log(n))^(log(n)),quad 2^(2n),quad 2^log(sqrt(n)), $ \
    $ n^3,quad log(n!),quad log(n),quad log(log(n)),quad n^log(log(n)),quad n!,quad n,quad log(10^n) $
][
    待解决
]
