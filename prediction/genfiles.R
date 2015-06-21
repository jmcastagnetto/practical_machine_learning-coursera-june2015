answers <- read.csv("prediction/problem_solution.csv", stringsAsFactors = FALSE)

pml_write_files = function(x){
  n = nrow(x)
  for(i in 1:n){
    filename = paste0("prediction/problem_id_",i,".txt")
    write.table(x$classe[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
  }
}

pml_write_files(answers)
