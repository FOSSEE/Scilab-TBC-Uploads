//Chapter 7, Example 7.7, Page 209
clc
clear
// Range in water
x = poly([-2.5839, 1.3767, 0.20954],'x','c')
r = log10(2)
pow = horner(x,r)
Rp = 10**pow
RT = 3*Rp
printf("Rp = %f cm\n",Rp)
printf("RT = %f cm\n",RT)
//Answers may vary due to round off error
