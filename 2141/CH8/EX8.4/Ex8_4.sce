
clc
//initialisation of variables
w=1440//watt hours
P=1000//lbf/in^2
T=77//F
W=1.440*3412//Btu
R=53.34 //F
T0=537 //F
P0=14.7 //lbf/in^2
g=144//ft
T=778//F
//CALCULATIONS
v=(R*T0)/(P*g)//ft^3/lbm
v0=(R*T0)/(P0*g)//ft^3/lbm
fhi=0-T0*(-R/T*log(P/P0))+P0*g/T*(v-v0)//Btu/lbm
M=W/fhi//lbm
V=(M*R*T0)/(P*g)//ft^3
//RESULTS
printf('The energy is available for starting the car=% f ft^3',V)
