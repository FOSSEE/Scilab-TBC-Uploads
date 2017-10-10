//Chapter 9, Example 9.2, Page 242
clc
clear
// kerma rate 
fsMs = (0.6022/18)*((2*12.8*0.5)+(3.5*0.1107))
K = 1.602*10**-10*fsMs*10**10*0.1
printf("fsUs/p = %f cm^2/g\n",fsMs)
printf(" K = %f Gy/s\n",K)
// Answers may vary due to round off error
