// Example 11_4
clc;funcprot(0);
// Given data
N_1=2;// The number of moles for CO_2 in mol
N_2=4;// The number of moles for nitrogen in mol
M_1=44;// The molecular weight of the CO_2 in kg/k.mol
M_2=28;// The molecular weight of nirogen in kg/kmol
P_1=100;// kPa
T_1=20+273;// K
P_2=2000;// kPa
c_v1=0.653;// kJ/kg.K
c_v2=0.745;// kJ/kg.K
c_p1=0.842;// kJ/kg.K
c_p2=1.042;// kJ/kg.K
Rbar=8.314;// The universal gas constant kJ/kgmol.K

// Calculation
// (a)
N=N_1+N_2;// The total number of moles in mol
m_1=N_1*M_1;// The mass of CO_2 in kg
m_2=N_2*M_2;// The mass of nitrogen in kg
m=m_1+m_2;// The mass of the mixture in kg
m_f1=m_1/m;// The mole fraction for CO_2
m_f2=m_2/m;// The mole fraction for nitrogen
c_v=(m_f1*c_v1)+(m_f2*c_v2);// kJ/kg.K
c_p=(m_f1*c_p1)+(m_f2*c_p2);// kJ/kg.K
k=c_p/c_v;// The ratio of specific heats
T_2=T_1*(P_2/P_1)^((k-1)/(k));// K
// (b)
W=(-m*c_v*(T_2-T_1))/10^3;// MJ
// (c)
dels=(c_p*log(T_2/T_1))-((Rbar/(((N_1/N)*M_1)+((N_2/N)*M_2)))*log(P_2/P_1));// The entropy change in kJ/kg.K
printf("\n(a)The final temperature,T_2=%3.0f K or %3.0f°C \n(b)The work required,W=%2.1f MJ \n(c)The change in entropy,dels=%0.5f kJ/kg.K",T_2,T_2-273,W,dels);
