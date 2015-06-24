clc
clear

//input
// a battery consists of 10cells connected in series
v=1.5;//e.m.f. of each cell in volts
r=0.2;// internal resistance of each cell in ohms
n=10;//number of cells in the battery

//calculations
//for maximum power load resistance=internal resistance
R=n*r;//total internal resistance of hte battery in ohms
Rl=R;//load resistance in ohms
e=n*v;//total e.m.f. of battery in volts
I=e/(R+Rl);//current from battery in amperes
P=(I^2)*R;//heating loss in the battery in watts
V=e-(I*R);//terminal voltage in volts

//output
mprintf('The maximum value of power which the battery may transfer is %3.1f W and an equal quantity of power is dissipated in the battery. \n under these conditions the terminal p.d. is %3.1f V',P,V)
 
