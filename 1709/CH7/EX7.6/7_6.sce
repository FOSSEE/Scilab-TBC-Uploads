clc
//Initialization of variables
T=-150+460 //R
v=0.6 //ft^3/lbm
vc=1.44
Tc=227 //R
Pc=482 //psia
//calculations
disp("From tables of z")
vr=v/vc
Tr=T/Tc
Pr=1.75
P=Pr*Pc
//results
printf("Final pressure = %d psia",P)
