// Example 11_1
clc;funcprot(0);
// Given data
N_1=78;// The number of moles for nitrogen in mol
N_2=22;// The number of moles for oxygen in mol
M_1=28;// The molecular weight of nirogen in kg/kmol
M_2=32;// The molecular weight of oxygen in kg/kmol
Rbar=8.314;// The universal gas constant kJ/kmol.K

// Calculation
// (a)
N=N_1+N_2;// The total number of moles in mol
y_1=N_1/N;// The mole fraction for nitrogen
y_2=N_2/N;// The mole fraction for oxygen
// (b)
m_1=N_1*M_1;// The mass of nitrogen in kg
m_2=N_2*M_2;// The mass of oxygen in kg
m=m_1+m_2;// The total mass of the mixture in kg
mf_1=m_1/m;// The mass fraction for nitrogen
mf_2=m_2/m;// The mass fraction for oxygen
// (c)
M=m/N;// The molecular weight of the mixture in kg/k.mol
// (d)
R=Rbar/M;// The gas constant for air in kJ/kg.K
printf("\n(a)The mole fraction for nitrogen,y_1=%0.2f \n   The mole fraction for oxygen,y_2=%0.2f \n(b)The mass fraction for nitrogen,mf_1=%0.3f \n   The mass fraction for oxygen,mf_2=%0.3f \n(c)The molecular weight of the mixture,M=%2.1f kg/k.mol \n(d)The gas constant for air,R=%0.3f kJ/kg.K",y_1,y_2,mf_1,mf_2,M,R);
