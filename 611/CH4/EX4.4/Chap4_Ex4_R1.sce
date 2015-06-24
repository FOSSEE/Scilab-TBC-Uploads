// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 4,Page 97
//Title:Energy transferred and final state masses of liquid and vapour
//================================================================================================================
clear 
clc

//INPUT
V=0.1;//volume of tank in m^3
T1=200;//initial temperature of saturated steam inside the tank in degree celsius
T2=150;//temperature in degree celsius that the tank attains after some time due to poor insulation
P1=15.549;//pressure in bar obtained from steam tables corresponding to T1
vg1=0.1272;//specific volume of saturated vapour in m^3/kg obtained from steam tables corresponding to T1
hg1=2790.9;//specific enthalpy of saturated vapour in kJ/kg obtained from steam tables corresponding to T1
P2=4.76;//pressure in bar obtained from steam tables corresponding to T2
vf=0.0010908;//specific volume of saturated liquid in m^3/kg obtained from steam tables corresponding to T2
vg2=0.3924;//specific volume of saturated vapour in m^3/kg obtained from steam tables corresponding to T2
hf=632.15;//specific enthalpy of saturated liquid in kJ/kg obtained from steam tables corresponding to T1
hg2=2745.4;//specific enthalpy of saturated vapour in kJ/kg obtained from steam tables corresponding to T1

//CALCULATION
ug1=((hg1*10^3)-(P1*10^5*vg1))*10^-3;//calculation of internal energy of vapour corresponding to T1 in kJ/kg
uf=((hf*10^3)-(P2*10^5*vf))*10^-3;//calculation of internal energy of liquid corresponding to T2 in kJ/kg
ug2=((hg2*10^3)-(P2*10^5*vg2))*10^-3;//calculation of internal energy of vapour corresponding to T2 in kJ/kg
v2=vg1;//since constant volume process
X2=(v2-vf)/(vg2-vf);//calculation of the final quality of steam (no unit)
u2=(X2*ug2)+((1-X2)*uf);//calculation of the internal energy at the final state in kJ/kg
m=V/vg1;//calculation of the mass of steam in kg
Q=m*(u2-ug1);//calculation of energy transferred as heat in kJ, using the first law of thermodynamics
mf=m*(1-X2);//calculation of mass of liquid in the tank in the final state in kg
mg=m*X2;//calculation of mass of vapour in the tank in the final state in kg

 //OUTPUT
mprintf('\n The energy transferred as heat= %f kJ\n',Q);
mprintf('\n The mass of liquid in the tank in the final state= %0.3f kg\n',mf);
mprintf('\n The mass of vapour in the tank in the final state= %0.3f kg\n',mg);
//===============================================END OF PROGRAM===================================================


