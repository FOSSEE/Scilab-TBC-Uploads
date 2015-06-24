clc
clear
//Initialization of variables
m=1 //lbm
p=50.9 //atm
t=212+460 //R
R=0.73
//calculations
pc=72.9 //atm
tc=87.9 +460 //R
pr=p/pc
Tr=t/tc
z=0.88
v=z*R*t/p
//results
printf("volume = %.3f ft^3/mole",v)
