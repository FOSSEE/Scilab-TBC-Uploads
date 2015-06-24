clc
clear
//Initialization of variables
m=1 //lbm
T1=212+460 //R
sv=0.193 //ft^3/lbm
M=44
a=924.2 //atm ft^2 /mole^2
b=0.685 //ft^3/mol
R=0.73 //atm ft^3/R mol
//calculations
v=sv*M
p=R*T1/v
p2=R*T1/(v-b) -a/v^2
//results
printf("In ideal gas case, pressure = %.1f atm",p)
printf("\n In vanderwaals equation, pressure = %.1f atm",p2)
