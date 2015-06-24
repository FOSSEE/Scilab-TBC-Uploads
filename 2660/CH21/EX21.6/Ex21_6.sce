clc
// producer's risk
n = 71 // sample size
AQL = 0.005
LTPD = 0.05
l_s = 500 // lot size
z1 = n*AQL // mean number of defects
pp1 = exp(-z1)+z1*exp(-z1) // poisson proability for 1 or less defective
alpha = (1-pp1)*100 // producer's risk
alpha = ceil(alpha)
// consumer's risk
z2 = n*LTPD // mean number of defects
pp2 = exp(-z2)+z2*exp(-z2) // poisson proability for 1 or less defective
bita = pp2*100 // consumer's risk
printf("\n Producers risk = %d percent\n Consumers risk = %0.2f percent", alpha,bita)
