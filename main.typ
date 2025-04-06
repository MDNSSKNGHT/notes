#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)

#let project(title: "", authors: (), body) = {
  set document(author: authors, title: title)
  set text(font: "Libertinus Serif", lang: "es")
  set heading(numbering: "1.1.")
  set par(justify: true)

  show heading: it => [
    #v(1em)
    #it
  ]

  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(2em)
  ]

  outline()

  body
}
#show: project.with(title: "Notas en Álgebra Lineal I")
#set heading(numbering: "1.")

#include "chapter-1.typ"
// #include "chapter-2.typ"
