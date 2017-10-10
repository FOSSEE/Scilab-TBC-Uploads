//Chemical Engineering Thermodynamics
//Chapter 5
//Thermodynamic Potentials and Maxwell's Relation

//Example 5.1
clear;
clc;

//Given
T = 293;//Constant temperature in K
w_NH3 = 20/100;//weight of NH3 in an aqueous solution in Kg
w_H2O = 80/100;//weight of H2O in an aqueous solution in Kg
V = 40;//feed rate in Kg/min
M_NH3 = 17;//Molecular weight of NH3
M_H2O = 18;//Molecular weight of H20
R = 1.98;//gas constant in Kcl/Kg mole K
V_s = 62;//Rate of heating steam in Kg/min
P1_H2O = 11.6;//Vapour pressure of water in feed in  mm Hg
P2_H2O = 17.5;//Vapour pressure of pure water in mm Hg
P1_NH3 = 227;//Vapour pressure of NH3 in feed in mm Hg
P2_NH3 = 6350;//Vapor pressure of  pure NH3 in mm Hg
//From steam tables:
Hs = 666.4;//Enthalpy of steam at 160 deg celsius &amp; 2Kgf/cm^2 in Kcal /Kg 
Ss = 1.75;//Entropy of steam at 160 deg celsius &amp; 2Kgf/cm^2V in Kcal/Kg K
Hl = 20.03;//Enthalpy of liquid water at 20 deg celsius in Kcal/Kg
Sl = 0.0612;//Entropy of liquid water at 20 deg celsius in Kcal/Kg K

//To Calculate the efficiency of the separation process 
//Material Balance:
n_NH3 = (V*w_NH3)/M_NH3;//Kg moles of NH3 in feed(tops)
n_H2O = (V*w_H2O)/M_H2O;//Kg moles of H20 in feed(bottoms)
//del_F = del_F_NH3 +del_F_H2O;
del_F = (R*T*n_NH3*log(P2_NH3/P1_NH3))+(R*T*n_H2O*log(P2_H2O/P1_H2O));//Theoretical minimum work done in Kcal
//The available energy of the steam can be calculated from equation 4.14(page no 110)
del_B = -V_s*((Hl-Hs)-T*(Sl-Ss));//Available energy of the steam in Kcal
E = (del_F/del_B)*100;
mprintf('The efficiency of the separation process is %f percent',E);
//end