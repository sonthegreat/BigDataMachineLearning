DataFunction = function(lenght = 66, numPath = 2, sd = 1){
  par(mfrow =c(1,2))
  dta1 = rnorm(69, 0, 0.05)

  
  plot(dta1 + 1, type = "1", col = 0, pch = "o",
       main = "MCMC Simualtion",
       ylab = " Cumilative Return Path from $1",
       xlab = "Number of Time Units",
       lty=1, ylim=c(-1,3),
       xlim = c(1,lenght))
  for(i in 0:(numPath)){
    dta1 = rnorm(lenght, 0, sd)
    dta2 = cumprod(dta1 + 1)
    lines(cumprod(dta1 + 1), col = i, lty = i )
  }
}
DataFunction(100,20)


# I think this can help predict the stock movement as using simulation allows 
# traders to predict stock return probality and returns. So if most prediction
# saids that stock price going to go down there not going buy it. Also stock
# volatility can determain stock riskiest which will help investor.
