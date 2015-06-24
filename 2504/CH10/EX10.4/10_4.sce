clc
//initialisation of variables
clear
A= 320 //ft/^2
w= 18000 //lbf
v= 230 //ft/sec
ad= 0.0765 //lbm/ft^3
p= 5 //per cent
c= 0.055
n= 1.75
g= 32.2 //ft/sec^2
//CALCULATIONS
CL= 2*w*(1-(p/100))*g/(ad*v^2*A)
D= w*(1-(p/100))*c*n/CL
//RESULTS
printf ('lift coeefieicnt = %.2f',CL)
printf ('\n Drage force = %.f',D)
