clc
//initialisation of variables
d= 6 //ft
C= 95 //ft^0.5/sec
i= 1/800
m= 1.705 //ft
O= 211
a= 15.16
g= 32.2 //ft^2/sec
//CALCULATIONS
A= ((d/2)^2/2)*(((O*%pi)/180)+sind(2*a))
u= C*sqrt(m*i)
Q= A*u
f= (2*g)/C^2
//RESULTS
printf (' rate of volumetric flow= %.1f ft^3/sec',Q)
printf (' \n resistance factor= %.5f ',f)
