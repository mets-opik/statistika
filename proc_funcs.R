options(OutDec = ",")

print_termin <- function(x) {
  paste0('[',x,']', "(https://sonaveeb.ee/search/unif/dlall/aso/",gsub(" ", "%20", tolower(x)),"/1/est)") 
}


print_func <- function(x) {
  paste0('`',x,'()`')
}
