clc
clear
//Initialization of variables
x=[0.74 0.06 0.01] //mole fraction of C, H and S respectively
y=[8/3 8 1] //Pounds O2 per pound substance of C,H and S respectively
oxy=0.08 //Oxygen in coal
z=0.232 //mass of coal
//calculations
pou=x.*y
tot=sum(pou)
oxy2=tot-oxy
air=oxy2/z
//results
printf("Theoretical air fuel ratio = %.2f lb of air per pound of coal",air)
