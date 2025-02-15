for(x in list.files(".", "^0.*.Rmd")){
  rmarkdown::render(x, output_format = rmarkdown::word_document())
}
