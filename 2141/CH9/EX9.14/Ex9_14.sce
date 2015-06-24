
clc
//initialisation of variables
P1=14.7//lbf/in^2
T1=520 //R
P2=70 //lbf/in^2
T2=814 //R
Wc=70.6 //Btu/lbm
P3=70 //lbf/in^2
T3=2060 //R
Cp=0.24 //R
Wt=70.6 //lbf/in^2
T=294//R
T5=1318//R
P=1.167 //Btu/lbm
p=1.715 //Btu/lbm
g=32.17//lbf/in^2
t=778//F
//CALCULATIONS
T4=T3-T//R
P4=P3/p//lbf/in^2
V=sqrt (2*g*t)*Cp*(T4-T5)//ft/sec
//RESULTS
printf('The velocity of the air leaving the nozzle=% f ft/sec',V)
