### R code from vignette source 'manual.Rnw'

###################################################
### code chunk number 1: loadLibrary (eval = FALSE)
###################################################
## library(ZeligMultilevel)


###################################################
### code chunk number 2: Examples.data (eval = FALSE)
###################################################
## data(coalition2)


###################################################
### code chunk number 3: Examples.zelig (eval = FALSE)
###################################################
## z.out1 <- zelig(duration ~ invest + fract + polar + numst2 + crisis + tag(1 | country), data=coalition2, model="gamma.mixed", method="PQL",family=Gamma(link=log))


###################################################
### code chunk number 4: Examples.summary (eval = FALSE)
###################################################
## summary(z.out1)


###################################################
### code chunk number 5: Examples.setx (eval = FALSE)
###################################################
## x.high <- setx(z.out1, numst2 = 1)
## x.low <- setx(z.out1, numst2 = 0)


###################################################
### code chunk number 6: Examples.sim (eval = FALSE)
###################################################
## s.out1 <- sim(z.out1, x=x.high, x1=x.low)
## summary(s.out1)


###################################################
### code chunk number 7: Examples.data (eval = FALSE)
###################################################
## data(voteincome)


###################################################
### code chunk number 8: Examples.zelig (eval = FALSE)
###################################################
## z.out1 <- zelig(vote ~ education + age + female + tag(1 | state), data=voteincome, model="logit.mixed")


###################################################
### code chunk number 9: Examples.summary (eval = FALSE)
###################################################
## summary(z.out1)


###################################################
### code chunk number 10: Examples.setx (eval = FALSE)
###################################################
## x.high <- setx(z.out1, education=quantile(voteincome$education, 0.8))
## x.low <- setx(z.out1, education=quantile(voteincome$education, 0.2))


###################################################
### code chunk number 11: Examples.sim (eval = FALSE)
###################################################
## s.out1 <- sim(z.out1, x=x.high, x1=x.low)
## summary(s.out1)


###################################################
### code chunk number 12: Examples.data (eval = FALSE)
###################################################
## data(voteincome)


###################################################
### code chunk number 13: Examples.zelig (eval = FALSE)
###################################################
## z.out1 <- zelig(income ~ education + age + female + tag(1 | state), data=voteincome, model="ls.mixed")


###################################################
### code chunk number 14: Examples.summary (eval = FALSE)
###################################################
## summary(z.out1)


###################################################
### code chunk number 15: Examples.setx (eval = FALSE)
###################################################
## x.high <- setx(z.out1, education=quantile(voteincome$education, 0.8))
## x.low <- setx(z.out1, education=quantile(voteincome$education, 0.2))


###################################################
### code chunk number 16: Examples.sim (eval = FALSE)
###################################################
## s.out1 <- sim(z.out1, x=x.high, x1=x.low)
## summary(s.out1)


###################################################
### code chunk number 17: ExamplesPlot (eval = FALSE)
###################################################
## plot(s.out1)


###################################################
### code chunk number 18: Examples.data (eval = FALSE)
###################################################
## data(homerun)


###################################################
### code chunk number 19: Examples.zelig (eval = FALSE)
###################################################
## z.out1 <- zelig(homeruns ~ player + tag(player - 1 | month), data=homerun, model="poisson.mixed")


###################################################
### code chunk number 20: Examples.summary (eval = FALSE)
###################################################
## summary(z.out1)


###################################################
### code chunk number 21: Examples.setx (eval = FALSE)
###################################################
## x.out <- setx(z.out1)


###################################################
### code chunk number 22: Examples.sim (eval = FALSE)
###################################################
## s.out1 <- sim(z.out1, x=x.out)
## summary(s.out1)


