clc
//Intitalisation of variables
clear
d= 0.7910 //kg/cm^3
T= 20 //C
mw= 58.08 //gm
x1= 7.2 //gm
x2= 16.2 //gm
x3= 20 //gm
x4= 23.2 //gm
n1= 3 //atoms
n2= 6 //atoms
//CALCULATIONS
r= ((n1*x1+n2*x2+x3+x4)*d/mw)^4
//RESULTS
printf ('Surface tension of acetone = %.1f dynes cm^-1',r)
