# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

qq<- function(scores){
  remove<-which(scores==0)
  if(length(remove)>0){
    x<- sort(scores[-remove],decreasing = TRUE)
  }
  else{
    x<- sort(scores,decreasing = TRUE)
  }
  n=length(x)
  unif.p<--log10(ppoints(n))
  plot(unif.p,x,pch=16,xlab = "Expected -log(p)",ylab = "Observed -log(p)")
  lines(c(0,max(unif.p)),c(0,max(unif.p)),lty=2)
}

