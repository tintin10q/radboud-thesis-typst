#import "radboud-thesis.typ": radboud-thesis

#show: radboud-thesis.with(
  title: "Title",
  subtitle: "Ez pz",
  author: (
    name: "Author",
    student-number: "s1234567",
  ),
  supervisors: (("Supervisor", "dr. Dewey Duck"), ("Second reader", "prof. dr. Louie Duck")),
  abstract: include "abstract.typ",
  thesis-type: "Master",
  study: "Computing Science",
  date: datetime.today(),
)

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


