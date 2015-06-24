clc
clear
//Initialization of variables
p1=200 //psia
t1=480 //F
eff=0.95
g=32.2 //ft/s^2
J=778
mf=3.4 //lb/s
//calculations
disp("From steam tables,")
h1=1257.8 
h2=1210.5 
dh=eff*(h1-h2)
ve=sqrt(2*g*J*dh)
h3=h1-dh
vs=3.961
Ae=mf*vs/ve *144
//results
printf("Nozzle exit area = %.3f sq.in",Ae)
