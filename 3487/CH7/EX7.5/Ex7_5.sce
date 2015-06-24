//Chapter 7,Example 7.5 Page 226
clc
clear
E = 500
Z = 350
L = 800
E1 = E*(1-exp(-(2*Z/L)*2))
printf (" E'' = %f kV \n",E1)

//Answers may vary due to round off error
