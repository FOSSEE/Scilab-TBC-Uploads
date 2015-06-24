//Section-10,Example-1,Page no.-CT.7
//To calculate enthalpy of formation of sucrose.
clc;
EC_C=-393.5                //dl_H(C+O_2=CO_2)
EC_H=-286.2               //dl_H(H_2+1/2O_2=H_2O)
EC_S=-5644.2           //dl_H(C_12H_22O_11+12O_2=12CO_2+11H_2O)
a=(12*EC_C)+(11*EC_H)-EC_S
disp (a,'Enthalpy of formation of sucrose(kJ)')
