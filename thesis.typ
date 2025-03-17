#import "radboud-thesis.typ": radboud-thesis, appendix

#show: radboud-thesis.with(
  title: "Title",
  subtitle: "Subtitle",
  author: (
    name: "Author",
    student-number: "s1234567",
  ),
  supervisors: (("Supervisor", "dr. Dewey Duck"), ("Second reader", "prof. dr. Louie Duck")),
  abstract: include "chapters/abstract.typ",
  thesis-type: "Master",
  study: "Computing Science",
  date: datetime.today(),
)

#outline()

#include "chapters/introduction.typ"
#include "chapters/preliminaries.typ"
#include "chapters/results.typ"
#include "chapters/related_work.typ"
#include "chapters/conclusion.typ"

#bibliography("bibliography.bib", style: "association-for-computing-machinery")

#show: appendix

#include "chapters/appendix.typ"

