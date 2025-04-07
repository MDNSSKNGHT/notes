#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)


#let theorem = thmbox(
  "theorem",
  "Teorema",
  fill: rgb("#e8e8f8"),
)

#let lemma = thmbox(
  "theorem", // Lemmas use the same counter as Theorems
  "Lema",
  fill: rgb("#efe6ff"),
)

#let corollary = thmbox(
  "corollary",
  "Corolario",
  base: "theorem", // Corollaries are 'attached' to Theorems
  fill: rgb("#f8e8e8"),
  titlefmt: strong,
)

#let definition = thmbox(
  "definition",
  "Definición",
  inset: (x: 1.2em, top: 1em),
)

#let exercise = thmbox(
  "exercise",
  "Ejercicio",
  stroke: rgb("#ffaaaa") + 1pt,
  base: none, // Unattached: count globally
).with(numbering: "I") // Use Roman numerals

// Examples and remarks are not numbered
#let example = thmplain("example", "Ejemplo").with(numbering: none)
#let remark = thmplain(
  "remark",
  "Observación",
  inset: 0em,
).with(numbering: none)

// Proofs are attached to theorems, although they are not numbered
#let proof = thmproof(
  "proof",
  "Prueba",
  base: "theorem",
)

#let solution = thmplain(
  "solution",
  "Solución",
  base: "exercise",
  inset: 0em,
).with(numbering: none)

#let v0 = $bold("0")$
#let v1 = $bold("1")$

#let vu = $bold("u")$
#let vv = $bold("v")$
#let vw = $bold("w")$
