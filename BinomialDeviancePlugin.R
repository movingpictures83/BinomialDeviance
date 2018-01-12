library('vegan')

input <- function(inputfile) {
  pc <<- read.csv(inputfile, header = TRUE);
}


run <- function() {
  cn <<- pc[,1]
  #cn <<- rownames(pc);
  #cn <<- cn[2:length(cn)];
  pc <<- pc[,-1];
  pc <<- apply(pc, 1, as.numeric);
  pc <<- t(pc);
  pc <<- as.matrix(vegdist(pc, method="binomial"))
}

output <- function(outputfile) {
   #print(pc);
   #print(cn);
   write.table(pc, file=outputfile, sep=",", append=FALSE, row.names=unlist(cn), col.names=unlist(cn), na="");
}


