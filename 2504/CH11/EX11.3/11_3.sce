clc
//initialisation of variables
clear
a= 154 //degrees
vbm= 38 //ft/sec
bom= 147 //degrees
vwm= -7.78 //ft/sec
w= 62.4 //lbf/ft^3
g= 32.2 //ft/sec^2
vb= 38 //ft/sec
A= 4.18 //ft^2
e= 0.95
//CALCULATIONS
vat= (vwm-vb)*tand(bom)
Q= vat*A
a1= acotd(-vbm/vat)
imt= a1-a
C= w*Q*vwm*e/g
//RESULTS
printf ('Flow rate = %.1f ft^3',Q)
printf ('\n Incidence angle= %.f degrees',imt)
printf ('\n Torque= %.f lbf ft',C)
