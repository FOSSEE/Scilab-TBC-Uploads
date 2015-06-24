clc
//Initialization of variables
Z=1.39
R=0.73 
T=492 //R
p=500 //atm
M=28 //lbm
//calculations
v=Z*R*T/(p*M)
//results
printf("volume = %.4f ft^3/lbm",v)
