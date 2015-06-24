clc
//initialisation of variables
clear
x= 0.1 //ft
w= 62.4 //lbf/ft^3
v1= 10 //ft/sec
u= 2.4*10^-5 //lbf/ft
g= 32.2 //ft/sec^2
k= 4.91
//CALCULATIONS
s= k*x*(w*v1*x/(u*g))^-0.5
Tw= 0.332*w*v1^2*(u*g/(w*x*v1))^0.5/g
R= 0.332*6*Tw
//RESULTS
printf ('Thickness = %.2e*ft',s)
printf ('\n Shear stress = %.3f lbf/ft^2',Tw)
printf ('\n Shear stress = %.3f lbf/ft',R)
