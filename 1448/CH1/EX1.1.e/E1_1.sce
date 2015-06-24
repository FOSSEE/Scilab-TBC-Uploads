clc
//Initialzation of variables
m=1.25 //g
MN2=28.02 //g/mol
T=20+273.15 //K
V=0.25//L
//Calculations
P=m*8.31451*T/(MN2*V)
//Results
printf('Pressure in the gas flask =%.2f kPa',P)
