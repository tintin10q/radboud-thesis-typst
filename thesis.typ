
// make everything look as much like LaTeX as possible, if you want
// #set page(margin: 1.75in)
#set par(leading: 0.55em, spacing: 0.55em, first-line-indent: 1.8em, justify: true)
#set text(font: "New Computer Modern")
#show raw: set text(font: "New Computer Modern Mono")


#set heading(numbering: "1.1")
#show heading.where(level: 1): it => block({
  if counter(heading).get().at(0) > 0 {
    v(3em)
    block(text(size: 20pt, [Chapter #counter(heading).display()]))
    v(1em)
  }
  block(text(size: 26pt, [#it.body]))
  v(1em)
})

// #set outline(title: translations.contents)
#show outline: it => {
  show heading: pad.with(bottom: 1.25em)
  it
}

// Level 1 outline entries are bold and there is no fill.
#show outline.entry.where(level: 1): set outline.entry(fill: none)
#show outline.entry.where(level: 1): set block(above: 1.35em)
#show outline.entry.where(level: 1): set text(weight: "bold")

// Level 2 and 3 outline entries have a bigger gap and a dot fill.
#show outline.entry.where(level: 2).or(outline.entry.where(level: 3)): set outline.entry(
  fill: repeat(justify: true, gap: 0.5em)[.],
)

#show outline.entry.where(level: 2).or(outline.entry.where(level: 3)): it => link(
  it.element.location(),
  it.indented(
    gap: 1em,
    it.prefix(),
    it.body() + box(width: 1fr, inset: (left: 5pt), it.fill) + box(width: 1.5em, align(right, it.page())),
  ),
)

#align(center)[
  #text(size: 17pt)[#smallcaps[Master Thesis\ Computing Science]]
  #image("Logo_Radboud_University.svg", width: 25mm)
  #text(size: 14pt)[#smallcaps[Radboud University Nijmegen]]

  #line(length: 100%, stroke: 0.4mm)
  #text(size: 20pt, weight: "bold")[Implicit Computational Complexity for Proving $P=B P P$]\
  #text(size: 12pt)[#smallcaps[Ez]]
  #line(length: 100%, stroke: 0.4mm)
  #grid(
    columns: (40%, 40%),
    align(left)[
      _Author:_\
      Huey Duck\
      s1234567
    ],
    align(right)[
      _Supervisor:_\
      Dr. Dewey Duck

      _Second reader:_\
      Prof. dr. Louie Duck
    ],
  )
  #v(1fr)
  #text(size: 12pt)[#datetime.today().display("[month repr:long] [day], [year]")]
]

#pagebreak()

#outline()

#pagebreak()

= Abstract


#lorem(50)

#pagebreak()

= Introduction
#lorem(80)

#lorem(80)

== Intro


