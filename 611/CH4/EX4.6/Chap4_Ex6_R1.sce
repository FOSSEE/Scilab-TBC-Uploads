// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 6,Page 103
//Title:Work done and final temperature
//================================================================================================================
clear 
clc

//INPUT
W=1;//weight of steam in kg in the piston cylinder assembly
X=0.8;//quality of steam (no unit)
T1=150;//initial temperature  of steam in degree celsius
I=5;//current passed in Amperes
V=220;//voltage in volts across the resistor
t=10;//time for which the current is passed in minutes
P1=476;//pressure in kPa obatined from steam tables (corresponding to T1)
vf=0.0010908;//specific volume of saturated liquid in m^3/kg obatined from steam tables (corresponding to T1)
vg=0.3924;//specific volume of satuarted vapour in m^3/kg obatined from steam tables (corresponding to T1)
hf=632.15;//specific enthalpy of saturated liquid in kJ/kg obtained from steam tables (corresponding to T1)
hg=2745.4;//specific enthalpy of saturated vapour in kJ/kg obtained from steam tables (corresponding to T1)

//CALCULATION
V1=(X*vg)+((1-X)*vf);//calculation of specific volume of steam in m^3/kg
h1=(X*hg)+((1-X)*hf);//calculation of specific enthalpy of steam in m^3/kg
Ws=-V*I*t*60*10^-3;//calculation of electrical work done on the system in kJ
h2=h1-Ws;//calculation of the specific enthalpy of steam in the final state in kJ/kg
P2=0.476;//Pressure in MPa is held constant during the process
T_int1=200;//Temperature in degree celsius obtained from steam tables at P2 taken for interpolation to find V2 and T2 corresponding to P2 
T_int2=300;//Temperature in degree celsius obtained from steam tables at P2 taken for interpolation to find V2 and T2 corresponding to P2 
V_int1=0.4512;//specific volume in m^3/kg at T_int1 from steam tables at P2 taken for interpolation to find V2 and T2 corresponding to P2
V_int2=0.5544;//specific volume in m^3/kg at T_int2 from steam tables at P2 taken for interpolation to find V2 and T2 corresponding to P2
h_int1=2856.37;//specific enthalpy in kJ/kg at T_int1 obtained from steam tables at P2 taken for interpolation to find V2 and T2 corresponding to P2
h_int2=3065.38;//specific enthalpy in kJ/kg at T_int2 obtained from steam tables at P2 taken for interpolation to find V2 and T2 corresponding to P2
V2=(((h2-h_int1)/(h_int2-h_int1))*(V_int2-V_int1))+V_int1;//specific volume of superheated steam in m^3/kg obtained by interpolation (corresponding to T2 and P2)
//Temperature of superheated steam in degree celsius obtained by interpolation (corresponding to T2 and P2) 
T2=(((h2-h_int1)/(h_int2-h_int1))*(T_int2-T_int1))+T_int1;
W=(P1*10^3*(V2-V1)*W)*10^-3;//calculation of work done by steam in kJ using Eq.(4.14)

//OUTPUT
mprintf('\n The work done by steam= %0.2f kJ \n',W);
mprintf('\n The final temperature= %0.2f degree celsius\n',T2);

//===============================================END OF PROGRAM===================================================
