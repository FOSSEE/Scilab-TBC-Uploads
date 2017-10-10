//Chapter 7, Example 7.2, Page 179
clc
clear
// Total interaction coefficient
Femu = 0.05951 // meu/p of iron 
Pbmu = 0.06803 // meu/p of lead
w = 0.5
mew= (w*Femu)+(w*Pbmu)
Pmix = 2*(1/((1/7.784)+(1/11.35)))
mmix = mew*Pmix
printf("(mew/p)^mix = %f cm^2/g\n",mew)
printf(" (mew)^mix = %f cm^-1",mmix)
//Answers may vary due to round off error
