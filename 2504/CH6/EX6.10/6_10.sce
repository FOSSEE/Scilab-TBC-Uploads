clc
//initialisation of variables
clear
Q= 400 //ft^3/sec
b1= 25 //ft
b2= 20 //ft
h1= 6 //ft
z1= 2.5 //ft
z2= 3.3 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
hc1= (Q^2/(g*b1^2))^(1/3)
hc2= (Q^2/(g*b2^2))^(1/3)
r= (hc1/hc2)*((h1/hc1)+0.5*(hc1/h1)^2)+((z1-z2)/hc2)
//RESULTS
printf ('hc1 = %.3f ft',hc1)
printf ('\n hc2 = %.3f ft',hc2)
printf ('\n Ratio = %.3f ',r)
