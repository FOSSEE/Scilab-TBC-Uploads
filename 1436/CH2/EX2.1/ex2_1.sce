// Example 2.1, page no-116
clear
clc

//(a)
//1kg/cm^2=10000 mmWG
x=10000*10
printf("(a)\n 10kg/cm^2 = %d mmWG",x)

//(b)
onemm_Hg=13.546
y=10^5/onemm_Hg
y=y/10^3
printf("\n(b)\n10kg/cm^2 = 10^5 mmWG = %.2f * 10^3 mmHg",y)

//(c)
onebar=1.03 
z=10/onebar
printf("\n(c)\n10kg/cm^2 = %.2f bars",z)
