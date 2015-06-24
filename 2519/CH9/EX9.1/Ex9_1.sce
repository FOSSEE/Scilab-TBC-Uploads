clc
clear
//Initialization of variables
T=32 //F
m=1 //lbm
J=778.16
//calculations
disp("From steam tables,")
hf=0 
p=0.08854 //psia
vf=0.01602 //ft^3/lbm
u=hf-p*144*vf/J
//results
printf("Internal energy = %.7f Btu/lbm",u)
