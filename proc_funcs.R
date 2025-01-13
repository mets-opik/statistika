options(OutDec = ",")

print_termin <- function(x) {
  paste0('\\index{',x,'}','**',x,'**')
}


print_func <- function(x) {
  paste0('`',x,'()`')
}
