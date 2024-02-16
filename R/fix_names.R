# Consider logic in https://github.com/rutrum/convert-case/blob/master/src/case.rs#L31
# E.g.: Title case:
# * Boundaries: [Space](`Boundary::Space`)
# * Pattern: [Uppercase](`Pattern::Uppercase`)
# * Delimeter: Space

# TODO:
#* CapitalCamelCase
#* CONSTANT_CASE,

fix_names <- function(x, case) {
  UseMethod("fix_names")
}

fix_names.character <- function(x, case) {
  # add checker

  # conversion code
  fixed <- x
  return(fixed)
}

change_case <- function(x, case) {
  # switch statement
}
# NOTE I am assuming that the natural delimiter is a space, but what if it isn't?
# what if I want to covert between cases?
# i could allow passing the delimiter as argument, or infer it?
# initially pass it?
# from case to another case?
# ideas to make this more interesting!

# TODO add trimming

# snake_case or c_case
to_snake <- function(x) {
  # should accept only character strings
  new <- trimws(x)
  new <- tolower(new)
  new <- gsub(" ", "_", new)
  return(new)
}

# flatcase or mumblecase
to_flat <- function(x) {
  new <- trimws(x)
  new <- tolower(new)
  new <- gsub(" ", "", new)
  return(new)
}

# kebab-case
to_kebab <- function(x) {
  new <- trimws(x)
  new <- tolower(new)
  new <- gsub(" ", "-", new)
  return(new)
}

# camelCase
to_camel <- function(x) {
  # identify first letter of each word
  # set case of first word to lower
  # set cas of first letter of subsequent words to upper
  x <- " new column"

  new <- trimws(x)


  new <- tolower(x)
  new <- gsub(" ", "", new)
  return(new)
}

from_case <- function() {
  # provides word delimiter + boundary based on case
}

to_case <- function() {
  # provides formula to convert to a case based on the original case (which can be a default)
}
