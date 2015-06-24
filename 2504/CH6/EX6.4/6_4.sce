clc
//initialisation of variables
clear
r= 1.4
g= 32.2 //ft/sec^2
R= 53.3 //lbf ft/lbm
T= 32 //C
T1= 2000 //R
r1= 1.32
p= 1440 //lbf/in^2
v1= 1.2306 //ft^3/lbm
v2= 1.2546 //ft^3/lbm
bm= 3.13*10^5 //lbf/in^2
w= 62.4 //lbf/ft^3
//CALCULATIONS
a1= sqrt(r*R*(460+T)*g)
a2= sqrt(r1*R*T1*g)
r2= p/(v1-v2)
a3= sqrt(-g*(v1+v2)^2*0.5^2*r2)
a4= sqrt(bm*144*g/w)
//RESULTS
printf ('Acoustic veloctiy = %.f ft/sec',a1)
printf ('\n Acoustic veloctiy = %.f ft/sec',a2)
printf ('\n Acoustic veloctiy = %.f ft/sec',a3)
printf ('\n Acoustic veloctiy = %.f ft/sec',a4)
