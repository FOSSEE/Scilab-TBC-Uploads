clc
clf()
n = 50 // sample size
rn = 2 // rejection number
AQL = 0.02
LTPD = 0.08
// Producer's risk
z1 = n*AQL // mean number of defectives
pp1 = exp(-z1)+z1*exp(-z1) // poisson proability for 1 or less defective
alpha = (1-pp1)*100 // producer's risk
// consumer's risk
z2 = n*LTPD // mean number of defectives
bita = (exp(-z2)+z2*exp(-z2))*100 // consumer's risk
d1 = 1 // incoming defective in percent
z3 = n*d1/100 // average number of defective
ppa1 = exp(-z3)+z3*exp(-z3) // proability of acceptance
ppa1 = ppa1*100
ppr1 = 100-ppa1 // proability of rejection
AOQ1 = ppr1*0 + ppa1*d1/100
d2 = 2 // incoming defective in percent
z4 = n*d2/100 // average number of defective
ppa2 = exp(-z4)+z4*exp(-z4) // proability of acceptance
ppa2 = ppa2*100
ppr2 = 100-ppa2 // proability of rejection
AOQ2 = ppr2*0 + ppa2*d2/100
d3 = 4 // incoming defective in percent
z5 = n*d3/100 // average number of defective
ppa3 = exp(-z5)+z5*exp(-z5) // proability of acceptance
ppa3 = ppa3*100
ppr3 = 100-ppa3 // proability of rejection
AOQ3 = ppr3*0 + ppa3*d3/100
d4 = 6 // incoming defective in percent
z6 = n*d4/100 // average number of defective
ppa4 = exp(-z6)+z6*exp(-z6) // proability of acceptance
ppa4 = ppa4*100
ppr4 = 100-ppa4 // proability of rejection
AOQ4 = ppr4*0 + ppa4*d4/100
d5 = 8 // incoming defective in percent
z7 = n*d5/100 // average number of defective
ppa5 = exp(-z7)+z7*exp(-z7) // proability of acceptance
ppa5 = ppa5*100
ppr5 = 100-ppa5 // proability of rejection
AOQ5 = ppr5*0 + ppa5*d5/100
printf("\n Producers risk = %0.2f percent\n Consumers risk = %0.3f percent", alpha,bita)
x = [1,2,4,6,8]
y = [0.91,1.4716,1.624,1.194,0.733]
plot(x,y)
xtitle("AOQ curve","Percent dectives" , "AOQ of lot")
