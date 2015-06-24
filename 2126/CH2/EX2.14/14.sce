clc
clear

//Input data
ar=2 //Ratio of nozzle exit area to nozzle throat area
Po=700 //Stagnation pressure in kPa
P2=400 //exit pressure in kPa

//Calculation
p1=0.528 //Ratio of critical pressure to Stagnation pressure from gas tables @M=1
Pt=Po*p1 //critical pressure in bar
p2=P2/Po //Pressure ratio
M2=0.93 //Exit mach number from gas tables @p2,k=1.4

//Output
printf('Since pressure decreases from %3i kPa to %3.1f kPa from inlet to throat, it acts as nozzle\n Since exit pressure %3i kPa is above critical pressure %3.1f kPa, it acts as diffuser with M=%3.2f\n Hence the duct acts as Venturi',Po,Pt,P2,Pt,M2)
