clc 
//initialisation of variables
KP= 50 //uA/V62
Vto= 2 //V
L= 10 //um
W= 400 //um
Vdd= 20 //mV
R2= 1 //kohms
R1= 3 //ohms
Rd= 11.5 //Mohms
Rs= 1 //kohms
V= 4 //mV
//CALCULATIONS
K= W*KP/(2*L*10^3)
Vg= Vdd*R2/(R1+R2)
clc
x=poly(0,"x")
vec=roots(x^2-3.630*x+2.148)
VGSQ= vec(2)
IDQ= K*(VGSQ-Vto)^2
VDSQ= Vdd+V+L-(Rd+Rs)*IDQ
//RESULTS
printf ('VDSQ = %.1f V ',VDSQ)
