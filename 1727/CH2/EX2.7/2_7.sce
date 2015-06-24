clc 
//Initialization of variables
g=9.81 //kN/m^2
hc=16.25 //m
l=1.5 //m
b=2.5 //m
f=0.3
Pi=50 //kN
//calculations
P=g*hc*l*b
Preq=Pi+f*P
//results
printf("Force required to lift the gate = %.2f kN",Preq)
