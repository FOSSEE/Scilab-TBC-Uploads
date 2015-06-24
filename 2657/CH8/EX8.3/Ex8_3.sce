//Calculations on Petrol engine
clc,clear
//Given:
pC=84,pH2=16 //Percentage of Carbon, Hydrogen in fuel 
p_v=20.9 //Percentage of Oxygen in air by volume
//Solution:
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
O=16 //Atomic mass of Oxygen(O)
N=14 //Atomic mass of Nitrogen(N)
m_f=100 //Mass of fuel (assume) in kg
//Combustion equation
//pC/C[C] + pH2/2[H2] + [a[O2] + (100-p_v)/p_v*a[N2]]  =  b[CO2] + d[O2] + e[N2] + f[H2O]
//Equating coefficients
b=pC/C,f=pH2/2,d=b/6,a=b+d+f/2 //Coefficients of combustion equation
m_a=a*2*O + (100-p_v)/p_v*a*2*N //Mass of air supplied in kg
A_F=m_a/m_f //Air fuel ratio
P_e=d/(a-d)*100 //Percentage excess air
//Results:
printf("\n (a)The air fuel ratio by mass, A_F = %.1f/1",A_F)
printf("\n (b)The percentage excess air supplied = %.1f percent\n\n",P_e)
