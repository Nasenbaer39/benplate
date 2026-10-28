#let titlepage(
  university: "",
  faculty: "",
  field: "",
  type: "",
  author: "",
  date: none,
  advisor: "",
  first-reviewer: "",
  second-reviewer: "",
  accent-color: rgb(165, 28, 48),
  date-format: "[day].[month].[year]",
) = {
  set align(center + horizon)
  set par(leading: 15pt)
  page(
    margin: (left: 40mm, right: 40mm, top: 50mm, bottom: 50mm),
  )[
    #text(fill: accent-color, 20pt)[#university]\
    #text(weight: "semibold", 15pt)[
      Faculty of #faculty\
      Department of #field
    ]

    #v(40pt)
    #text(13pt)[#type]

    #v(30pt)
    #line(length: 100%, stroke: (thickness: 0.5pt))
    #v(7pt)#title()#v(11pt)
    #line(length: 100%, stroke: (thickness: 0.5pt))


    #v(40pt)
    submitted by\
    #author\
    #date.display(date-format)

    #v(40pt)

    *Advisor:*\
    #advisor

    #v(40pt)

    *Reviewers:*\
    #first-reviewer\
    #second-reviewer
  ]

  pagebreak(weak: true, to: "odd")
}
