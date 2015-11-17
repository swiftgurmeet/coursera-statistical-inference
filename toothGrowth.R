data(ToothGrowth)

coplot(len ~ dose | supp, 
       data = ToothGrowth, 
       panel = panel.smooth,
       xlab = "ToothGrowth data: length vs dose, given type of supplement",
       type="b",
       pch=20)


dVC0p5 <- ToothGrowth$len[ToothGrowth$supp == "VC" & ToothGrowth$dose == 0.5]
dVC1p0 <- ToothGrowth$len[ToothGrowth$supp == "VC" & ToothGrowth$dose == 1.0]
dVC2p0 <- ToothGrowth$len[ToothGrowth$supp == "VC" & ToothGrowth$dose == 2.0]
dOJ0p5 <- ToothGrowth$len[ToothGrowth$supp == "OJ" & ToothGrowth$dose == 0.5]
dOJ1p0 <- ToothGrowth$len[ToothGrowth$supp == "OJ" & ToothGrowth$dose == 1.0]
dOJ2p0 <- ToothGrowth$len[ToothGrowth$supp == "OJ" & ToothGrowth$dose == 2.0]


t.test(dOJ2p0,dVC2p0, var.equal = FALSE)$conf.int
t.test(dOJ2p0,dVC2p0, var.equal = FALSE)

t.test(dVC2p0,dVC0p5, var.equal = FALSE)$conf.int
t.test(dVC2p0,dVC0p5, var.equal = FALSE)


