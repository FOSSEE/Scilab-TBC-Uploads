// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 5,Page 102
//Title:Work done and energy transferred
//================================================================================================================
clear 
clc

//INPUT
W=1;//weight of steam in kg in the piston cylinder assembly
X=0.8;//quality of steam (no unit)
T1=150;//initial temperature of steam in degree celsius
T2=200;//final temperature of steam in degree celsius
P1=476;//pressure in kPa obatined from steam tables (corresponding to T1)
vf=0.0010908;//specific volume of saturated liquid in m^3/kg obatined from steam tables (corresponding to T1)
vg=0.3924;//specific volume of satuarted vapour in m^3/kg obatined from steam tables (corresponding to T1)
hf=632.15;//specific enthalpy of saturated liquid in kJ/kg obtained from steam tables (corresponding to T1)
hg=2745.4;//specific enthalpy of saturated vapour in kJ/kg obtained from steam tables (corresponding to T1)

//CALCULATION
V1=(X*vg)+((1-X)*vf);//calculation of specific volume of steam in m^3/kg
h1=(X*hg)+((1-X)*hf);//calculation of specific enthalpy of steam in kJ/kg
P2=0.476;//Pressure in MPa is held constant during the process 
P_int1=0.4;//Pressure in MPa from steam tables at T2 taken for interpolation to find V2 and h2 corresponding to P2
P_int2=0.5;//Pressure in MPa from steam tables at T2 taken for interpolation to find V2 and h2 corresponding to P2
V_int1=0.5343;//specific volume in m^3/kg at P_int1 obtained from steam tables at T2 taken for interpolation to find V2 and h2 corresponding to P2
V_int2=0.4250;//specific volume in m^3/kg at P_int2 obtained from steam tables at T2 taken for interpolation to find V2 and h2 corresponding to P2
h_int1=2860.4;//specific enthalpy in kJ/kg at P_int1 obtained from steam tables at T2 taken for interpolation to find V2 and h2 corresponding to P2
h_int2=2855.1;//specific enthalpy in kJ/kg at P_int2 obtained from steam tables at T2 taken for interpolation to find V2 and h2 corresponding to P2
V2=(((P2-P_int1)/(P_int2-P_int1))*(V_int2-V_int1))+V_int1;//specific volume of superheated steam in m^3/kg obtained by interpolation (corresponding to T2 and P2)
h2=(((P2-P_int1)/(P_int2-P_int1))*(h_int2-h_int1))+h_int1;//specific enthalpy of superheated steam in kJ/kg obtained by interpolation (corresponding to T2 and P2)
Q=(h2-h1)*W;//calculation of net heat transferred in kJ using Eq.(4.15)
W=P1*(V2-V1)*W;//calculation of work done by steam in kJ using Eq.(4.14)

//OUTPUT
mprintf('\n The work done by steam= %0.2f kJ \n',W);
mprintf('\n The net energy transferred as heat = %0.2f kJ\n',Q);
mprintf('\n The final state of superheated steam,Pressure=%0.3f MPa \n',P2);
mprintf('\n The final state of superheated steam,Temperature=%d degree celsius \n',T2);

//===============================================END OF PROGRAM===================================================
