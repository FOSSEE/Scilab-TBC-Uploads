clc
clear
//Initialization of variables
M2=18 //Molar mass of water
M=170 //Molar mass of octane
p=0.4593 //Pressure of octane //psia
disp("from steam tables,")
vfg=694.9 
J=778.2
m=9*18 //Mass of water
u1=-2363996 //Btu
//calculations
hfg=1050.4 //Btu/lbm
ufg= hfg- p*vfg*144/J
dU=ufg*m 
Lhv=u1+dU
//results
printf("Lower heating value = %d Btu/lbm",Lhv)
disp("The answers are a bit different due to rounding off error in textbook.")
