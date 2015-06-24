clc
//Initialization of variables
p=50 //atm
pc= 73 //atm
t= 459.7+212 //R
tc=459.7+87.9 //R
R=0.73
M=44
v=0.193 //ft^3/lbm
//calculations
pr=p/pc
tr=t/tc
z=0.88 //from compressibility charts
p2= z*R*t/v/M
//results
printf("pressure = %.1f atm",p2)
