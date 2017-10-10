// Example 12_4
clc;funcprot(0);
// Given data
X_O_2=0.2095;// The mole fraction for oxygen
p_m=0.1013;// MN/m^2
d=100;// m
M_O_2=32.00;// The molecular mass of oxygen
M_He=4.003;// The molecular mass of helium
R=8.3143;// kJ/(kgmole.K)

// Calculation
// (a)
p_O_2=X_O_2*p_m;// MN/m^2
p_m=1.08;// MN/m^2
X_O_2=p_O_2/p_m;// The mole fraction for oxygen
Shi_O_2=X_O_2;// The volume fraction for oxygen
pi_O_2=X_O_2;// The pressure fraction for oxygen
X_He=1-X_O_2;// The mole fraction for helium
Shi_He=X_He;// The volume fraction for oxygen
M_m=(X_O_2*M_O_2)+(X_He*M_He);// kg/kgmole
w_O_2=X_O_2*(M_O_2/M_m);// The mass fraction for oxygen
w_He=1-w_O_2;// The mass fraction for helium
printf("\n(a)The mole and volume fraction of oxygen,X_O2=Shi_O2=pi_O2=%0.4f \n   The helium mole and volume fractions,X_He=Shi_He=%0.3f \n   The mixture equivalent molecular mass,M_m=%1.2f kg/kgmole",X_O_2,X_He,M_m);
// (b)
R_m=R/M_m;// kJ/(kg.K)
c_vO_2=0.657;// kJ/(kg.K)
c_vHe=3.123;// kJ/(kg.K)
c_pO_2=0.917;// kJ/(kg.K)
c_pHe=5.200;// kJ/(kg.K)
c_vm=(w_O_2*c_vO_2)+(w_He*c_vHe);// kJ/(kg.K)
c_pm=(w_O_2*c_pO_2)+(w_He*c_pHe);// kJ/(kg.K)
k_m=c_pm/c_vm;// The specific heat ratio of the mixture
printf("\n(b)The mixture equivalent gas constant,R_m=%1.2f kJ/(kg.K) \n   The mixture specific heats,c_vm=%1.2f kJ/(kg.K) & c_pm=%1.2f kJ/(kg.K) \n   The specific heat ratio of the mixture,k_m=%1.2f",R_m,c_vm,c_pm,k_m);
