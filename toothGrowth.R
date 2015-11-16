coplot(len ~ dose | supp, data = ToothGrowth, panel = panel.smooth,xlab = "ToothGrowth data: length vs dose, given type of supplement",type="b",pch=20)


gVCp5 <- ToothGrowth$len[ToothGrowth$supp == "VC" & ToothGrowth$dose == 0.5]
gVC1 <- ToothGrowth$len[ToothGrowth$supp == "VC" & ToothGrowth$dose == 1.0]
gVC2 <- ToothGrowth$len[ToothGrowth$supp == "VC" & ToothGrowth$dose == 2.0]
gOJp5 <- ToothGrowth$len[ToothGrowth$supp == "OJ" & ToothGrowth$dose == 0.5]
gOJ1 <- ToothGrowth$len[ToothGrowth$supp == "OJ" & ToothGrowth$dose == 1.0]
gOJ2 <- ToothGrowth$len[ToothGrowth$supp == "OJ" & ToothGrowth$dose == 2.0]


t.test(gOJ2,gVC2, var.equal = FALSE)$conf.int
t.test(gOJ2,gVC2,var.equal = FALSE)

t.test(gVC2,gVCp5,var.equal = FALSE)$conf.int
t.test(gVC2,gVCp5,var.equal = FALSE)


