#let recipient = "Their Name"
#let sender = "Your Name"
#let date = "February 14, 2026"

#let cover-title = "Happy Valentine's Day"
#let cover-message = [
  You make ordinary days feel softer and brighter.
  Every laugh with you becomes a memory I want to keep.

  Thank you for your kindness, your warmth, and your beautiful heart.
  I am lucky to know you.
]
#let cover-closing = "With all my love,"

#let doc-title = "A Letter For You"
#let end-title = "Forever Yours"
#let end-message = [
  Thank you for reading my heart.
]
#let end-signoff = "Always,"

#let accent = rgb("#c93c62")
#let accent-deep = rgb("#7d1d3d")
#let ink = rgb("#2f2530")
#let cream = rgb("#fff8fb")
#let blush = rgb("#ffe5ee")
#let petal = rgb("#ffc3d7")
#let gold = rgb("#f5d29c")
#let accent-soft = rgb("#f2d7e1")

#set page(
  width: 8.5in,
  height: 11in,
  margin: (x: 0.7in, y: 0.7in),
  fill: rgb("#fff1f6"),
  background: [
    #let heart(size, fill) = text(size: size, fill: fill)[#sym.suit.heart.filled]

    #place(top + left, dx: -2mm, dy: -2mm, scope: "parent", float: true)[
      #rotate(-18deg)[#heart(35pt, petal)]
    ]
    #place(top + right, dx: 3mm, dy: -1mm, scope: "parent", float: true)[
      #rotate(14deg)[#heart(27pt, blush)]
    ]
    #place(bottom + right, dx: 1mm, dy: 2mm, scope: "parent", float: true)[
      #rotate(16deg)[#heart(38pt, petal)]
    ]
    #place(bottom + left, dx: -2mm, dy: 1mm, scope: "parent", float: true)[
      #rotate(-11deg)[#heart(25pt, blush)]
    ]
  ],
)

#set text(font: "Libertinus Serif", size: 12pt, fill: ink)
#set par(justify: true, leading: 1.3em)

#block(
  width: 100%,
  height: 100%,
  inset: (x: 16mm, y: 14mm),
  fill: cream,
  stroke: 1pt + rgb("#efb9ca"),
  radius: 9mm,
  clip: true,
)[
  #place(top + right, dx: -8mm, dy: 4mm)[
    #rotate(15deg)[
      #text(size: 58pt, fill: rgb("#f8d4df"))[#sym.suit.heart.filled]
    ]
  ]
  #place(bottom + left, dx: 7mm, dy: -7mm)[
    #rotate(-12deg)[
      #text(size: 50pt, fill: rgb("#f8d4df"))[#sym.suit.heart.filled]
    ]
  ]

  #align(center)[
    #text(style: "italic", size: 14pt, fill: accent)[To #recipient]
  ]
  #v(3mm)
  #align(center)[
    #text(
      font: "Libertinus Serif Display",
      weight: "bold",
      size: 34pt,
      fill: gradient.linear(accent, accent-deep),
    )[#cover-title]
  ]
  #v(3mm)
  #align(center)[
    #text(size: 11pt, fill: gold)[#sym.suit.heart.filled #sym.suit.heart.filled #sym.suit.heart.filled]
  ]
  #v(8mm)

  #align(center)[
    #block(width: 84%)[
      #set par(justify: false, first-line-indent: 0em, leading: 1.45em)
      #cover-message
    ]
  ]

  #v(1fr)
  #align(right + bottom)[
    #text(style: "italic", size: 16pt, fill: accent-deep)[#cover-closing]
    \
    #text(style: "italic", size: 20pt, fill: accent)[#sender]
  ]
]

#pagebreak()

#counter(page).update(1)
#set page(
  width: 8.5in,
  height: 11in,
  margin: (x: 1in, y: 0.95in),
  fill: white,
  background: none,
  header: [
    #align(right)[
      #text(size: 9pt, fill: accent)[#doc-title]
    ]
  ],
  footer: context [
    #align(center)[
      #text(size: 9pt, fill: accent)[#sym.suit.heart.filled #h(4pt) #counter(page).display("1")]
    ]
  ],
)

#set text(font: "Libertinus Serif", size: 11pt, fill: ink)
#set par(justify: true, first-line-indent: 1.2em, leading: 0.72em)

#show heading.where(level: 1): it => block(above: 8mm, below: 2mm)[
  #set par(first-line-indent: 0em)
  #text(size: 14pt, weight: "semibold", fill: accent)[#it.body]
]

#align(center)[
  #text(size: 21pt, weight: "semibold", fill: accent)[#doc-title]
]
#v(3mm)

#set par(first-line-indent: 0em)
#text(weight: "medium")[To: #recipient]
\
#text(weight: "medium")[From: #sender]
\
#text(fill: rgb("#6e5a65"))[#date]
#line(length: 100%, stroke: 0.8pt + accent-soft)
#v(6mm)
#set par(first-line-indent: 1.2em)

Write your opening paragraph here. Keep it natural and direct.

Write your main content in normal paragraphs. Use *emphasis* when needed and *strong text* sparingly.

= A Gentle Section Heading

Continue writing as a normal document. This layout keeps the page clean, readable, and only lightly themed.

#quote(block: true)[
  Optional quote block for a memory, a promise, or one line you want to highlight.
]

= Another Section

- Mention one meaningful memory.
- Mention one thing you appreciate.
- Mention one hope for what comes next.

#v(10mm)
#set par(first-line-indent: 0em)
#align(right)[
  #text(fill: rgb("#6e5a65"))[With care,]
  \
  #text(size: 14pt, fill: accent)[#sender]
]

#pagebreak()
#set page(
  width: 8.5in,
  height: 11in,
  margin: (x: 0.7in, y: 0.7in),
  fill: rgb("#fff1f6"),
  background: [
    #let heart(size, fill) = text(size: size, fill: fill)[#sym.suit.heart.filled]

    #place(top + left, dx: -2mm, dy: -2mm, scope: "parent", float: true)[
      #rotate(-16deg)[#heart(28pt, blush)]
    ]
    #place(top + right, dx: 3mm, dy: -1mm, scope: "parent", float: true)[
      #rotate(14deg)[#heart(24pt, petal)]
    ]
    #place(bottom + right, dx: 1mm, dy: 2mm, scope: "parent", float: true)[
      #rotate(16deg)[#heart(30pt, blush)]
    ]
    #place(bottom + left, dx: -2mm, dy: 1mm, scope: "parent", float: true)[
      #rotate(-11deg)[#heart(22pt, petal)]
    ]
  ],
  header: none,
  footer: none,
)

#set text(font: "Libertinus Serif", size: 12pt, fill: ink)
#set par(justify: true, first-line-indent: 0em, leading: 1.3em)

#block(
  width: 100%,
  height: 100%,
  inset: (x: 16mm, y: 14mm),
  fill: gradient.linear(cream, blush),
  stroke: 1pt + rgb("#efb9ca"),
  radius: 9mm,
  clip: true,
)[
  #align(center + horizon)[
    #text(size: 11pt, fill: gold)[#sym.suit.heart.filled #h(4pt) #sym.suit.heart.filled #h(4pt) #sym.suit.heart.filled]
    #v(10mm)
    #text(
      font: "Libertinus Serif Display",
      weight: "bold",
      size: 30pt,
      fill: gradient.linear(accent, accent-deep),
    )[#end-title]
    #v(8mm)
    #end-message
  ]

  #align(right + bottom)[
    #text(style: "italic", size: 14pt, fill: accent-deep)[#end-signoff]
    \
    #text(style: "italic", size: 18pt, fill: accent)[#sender]
  ]
]
