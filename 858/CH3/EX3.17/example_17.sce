clc
clear 
printf("example 3.17 page number 108\n\n")

//to find enthalpy of formation of CuSO4.5H2O

delta_H2 = 11.7   //in kJ/mol
m_CuSO4 = 16  //in gm
m_H2O = 384   //in gm

delta_H3 = -((m_CuSO4+m_H2O)*4.18*3.95*159.6)/(16*10^3)
delta_H1 = delta_H3 - delta_H2;

printf("enthalpy of formation = %f kJ/mol",delta_H1)
