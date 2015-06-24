clc
//Initialization of variables
m=1 //lbm
T=32+460 //R
//calculations
disp("From steam tables")
hf=0
p=0.08854 //psi
vf=0.01602 //ft^3
u = hf- p*vf*144/778.16
//results
printf("Internal energy = %.7f Btu/lbm",u)
