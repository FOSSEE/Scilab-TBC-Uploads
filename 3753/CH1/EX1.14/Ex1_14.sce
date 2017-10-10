//Example number 1.14, Page number 1.39

clc;clear;close


//Variable declaration
theta=5*10**-3/2// unitless
lamda=5*10**-7 // in m

//Calculation
a=(lamda)/theta // in m

printf("a=%0.e m",(a))
printf("\n a=%.1f mm",a*10**3)
