// Example 18_1
clc;funcprot(0);
// Given data
T=20+273.15;// K
m=1.00;// kg
R=296;// J/kg.K
M=28.0;// kg/kgmole
N_o=6.022*10^26;// molecules/kgmole
k=1.380*10^-23;// J/molecule.K

// Calculation
// (a)
V_rms=sqrt(3*R*T);// The kinetic theory root mean square molecular velocity in m/s
// (b)
m_molecule=M/N_o;// kg/molecule
N=m/m_molecule;// molecules
U_trans=(3/2)*(N*k*T)/1000;// The total translational internal energy in kJ
printf("\n(a)The kinetic theory root mean square molecular velocity,V_rms=%3.0f m/s \n(b)The total translational internal energy,U=%3.0f kJ",V_rms,U_trans);
