// Chapter 3_The Semiconductor in Equilibrium
//Caption_Charge Neutrality
//Ex_12//page 116
T=550   //temperature in kelvin
Nc=2.8*(10^19)
Nv=1.04*(10^19)
Eg=1.12   // band gap energy in eV
ni=(Nc*Nv*(T/300)^3*exp(-Eg/0.0259 *(300/T)))^0.5
//no=1.05*Nd  since the intrinsic carrier concentration to contribute no more than 5 percent of the total electron concentration .
Nd=(ni^2/(1.05-1))^0.5
printf('The required impurity doping concentration is %fd per cm cube',Nd)
