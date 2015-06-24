clc
//Initialization of variables
m=2362 //g
cp=1 //Btu/lbm F
T=0.83 //F
mass=0.1 //g
//calculations
Qm=m*cp*T/mass
Qv=-Qm
//results
printf("Heat transferred = %d Btu/lbm fuel",Qv)
