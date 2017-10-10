// Example 11_2
clc;funcprot(0);
// Given data
T=25;// °C
P=2;// MPa
m_1=2;// The mass of nitrogen in kg
m_2=4;// The mass of CO_2 in kg
M_1=28;// The molecular weight of the nitrogen in kg/k.mol
M_2=44;// The molecular weight of the CO_2 in kg/k.mol
Rbar=8.314;// The universal gas constant kJ/kmol.K

// Calculation
N_1=m_1/M_1;// The number of moles for nitrogen in mol
N_2=m_2/M_2;// The number of moles for CO_2 in mol
N=N_1+N_2;// The total number of moles in mol
y_1=N_1/N;// The mole fraction for nitrogen
y_2=N_2/N;// The mole fraction for CO_2
P_1=y_1*P;// The partial pressure for nitrogen in MPa
P_2=y_2*P;// The partial pressure for CO_2 in MPa
M=(M_1*y_1)+(M_2*y_2);// The molecular weight of the mixture in kg/k.mol
R=Rbar/M;// The gas constant of the mixture in kJ/kg.K
printf("\nThe partial pressure for nitrogen,P_1=%0.2f MPa \nThe partial pressure for CO_2,P_2=%1.2f MPa \nThe gas constant of the mixture,R=%0.3f kJ/kg.K",P_1,P_2,R);
