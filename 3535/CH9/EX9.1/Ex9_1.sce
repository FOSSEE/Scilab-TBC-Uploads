//Chapter 9, Example 9.1, Page 241
clc
clear
// Iron kerma and absorbed dose rates
Sp = 10**14
r = 100
mew = 0.03031
mtr = 0.02112 // mew/pro
men = 0.01983 // mew/pro
p0 = 10**-6*Sp*exp(-mew*r)/(4*%pi*r**2)
K0 = 1.602*10**-10*mtr*p0
D0 = 1.602*10**-10*men*p0
printf("p0 = %f cm^-2s^-1\n",p0)
printf(" K0 = %e Gy/s\n",K0)
printf(" D0 = %e Gy/s\n",D0)
// Answers may vary due to round off error
