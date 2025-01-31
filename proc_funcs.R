require(mgcv)
knitr::opts_chunk$set(
  comment = '', fig.width = 8, fig.height = 6, out.width = "80%", size = "small"
)


options(OutDec = ",", digits = 3)

print_termin <- function(x) {
  #paste0('[',x,']', "(https://sonaveeb.ee/search/unif/dlall/aso/",gsub(" ", "%20", tolower(x)),"/1/est){target=\"_blank\"}") 
  paste0("**",x,"**")
}


print_func <- function(x) {
  paste0('`',x,'()`')
}

for(x in list.files("peatykid", "*.Rmd", full.names = T))
{
  sisu <- readLines(x)
  cat(sisu[8:length(sisu)], file = basename(x), sep="\n")
}

for(x in list.files("peatykid/pildid", "*.png", full.names = T))
{
  file.copy(x, paste0("pildid/", basename(x)), overwrite = T)
}


#file.exists("peatykid/data/naited.xlsx")
file.copy("peatykid/data/naited.xlsx", "data/naited.xlsx", overwrite = T)
