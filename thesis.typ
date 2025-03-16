#import "radboud-thesis.typ": radboud-thesis

#show: radboud-thesis.with(
  title: "Title",
  subtitle: "Ez pz",
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


#include "chapters/appendix.typ"

