knitr::opts_chunk$set(
  comment = '', fig.width = 7, fig.height = 4, out.width = "80%", size = "small", fig.pos = "H"
)


knitr::knit_engines$set(naidis = function(options) {
  excel_env_start <- '\n\\begin{naidis}\n'
  excel_env_end <- '\n\\end{naidis}\n'
  
  excel_code <- paste(excel_env_start,
                      paste0(options$code, "\n"),
                      excel_env_end, sep="")
  knitr::asis_output(excel_code)
})

knitr::knit_engines$set(excel = function(options) {
  excel_env_start <- '\n\\begin{naideExcel}\n'
  excel_env_end <- '\n\\end{naideExcel}\n'
  
  excel_code <- paste(excel_env_start,
                      paste0(options$code, "\n"),
                      excel_env_end, sep="")
  knitr::asis_output(excel_code)
})


options(OutDec = ",", digits = 3)

print_termin <- function(x) {
  #paste0('[',x,']', "(https://sonaveeb.ee/search/unif/dlall/aso/",gsub(" ", "%20", tolower(x)),"/1/est){target=\"_blank\"}") 
  paste0("**",x,"**")
}


print_func <- function(x) {
  paste0('`',x,'()`')
}

# for(x in list.files("peatykid", "*.Rmd", full.names = T))
# {
#   sisu <- readLines(x)
#   cat(sisu[8:length(sisu)], file = basename(x), sep="\n")
# }

for(x in list.files("peatykid/pildid", "*.png", full.names = T))
{
  file.copy(x, paste0("pildid/", basename(x)), overwrite = T)
}


#file.exists("peatykid/data/naited.xlsx")
#file.copy("peatykid/data/naited.xlsx", "data/naited.xlsx", overwrite = T)
