clc;
//Example 23.3 page no 335
printf("Example 23.3 page no 335\n\n");
//calculation of cunningham correction factor 
dp=0.4//particle diameter
lemda=6.53e-2
A=1.257 + 0.40*exp(-1.10*dp/(2*lemda))
C= 1 + 2*A*lemda/dp//cunningham correction factor(CCF)
printf("CCF C=%f ",C);
