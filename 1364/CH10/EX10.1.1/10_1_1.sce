clc
//initialisation of variables
Q= 450 //ft^3/sec
k= 0.5
i= 1/2000
C= 105 //ft^1/2/sec
//CALCULATIONS
d= (((Q*sqrt(2/i))/(2*sqrt(1+k^2-k)*C))^(2/5))*(5.41/7.55)
b= d/2
s= d*sqrt(1+k^2)
//RESULTS
printf (' vertical= %.2f ft',d)
printf (' \n horizontal= %.2f ft',s)
