//Incomplete combustion of Petrol
clc,clear
//Given:
pC=85,pH2=15 //Percentage of Carbon, Hydrogen in fuel
A_F=14 //Air fuel ratio by mass
p_m=23.2 //Percentage of oxygen in air by mass
//Solution:
m_f=100 //Mass of fuel (assume) in kg
m_a=A_F*m_f //Mass of air in kg
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
O=16 //Atomic mass of Oxygen(O)
N=14 //Atomic mass of Nitrogen(N)
p_v=20.9 //Percentage of Oxygen in air by volume
//Combustion equation
//pC/C[C] + pH2/2[H2] + [a[O2] + (100-p_v)/p_v*a[N2]]  =  b[CO2] + d[CO] + e[N2] + f[H2O]
//Equating coefficients
f=pH2/2 //Moles of H2O on balancing of H
a=m_a/(2*O+(100-p_v)/p_v*2*N) //Balancing Oxygen of both sides
//On balancing C of both sides we get, b + d = pC/C     eq(1)
//On balancing O of both sides we get, b + d/2 + f/2 = a     eq(2)
//Solving equations (1) and (2)
A=[1 1;1 1/2],B=[pC/C;a-f/2],SOL=A\B //Taking matrix A, B to get solution matrix, SOL = [b;d]
b=SOL(1),d=SOL(2) //Moles of CO2 and CO
e=(100-p_v)/p_v*a //Moles of Nitrogen in products of combustion
mC=b/m_f*C //Mass of carbon burning to CO2 in kg per kg of fuel
mCO2=b/m_f*(C+2*O) //Mass of CO2 produced in kg
mCO=d/m_f*(C+O) //Mass of CO produced in kg
mN2=e/m_f*(2*N) //Mass of N2 produced in kg
mH2O=f/m_f*(2*H+O) //Mass of H2O produced in kg
//Results:
printf("\n (a)The mass of the carbon burning to CO2 = %.3f kg",mC)
printf("\n (b)The mass of each of the gases in the exhaust per kg of fuel\n\t CO2 = %.2f kg\n\t CO = %.2f kg\n\t N2 = %.2f kg\n\t H2O = %.2f kg\n\n",mCO2,mCO,mN2,mH2O)
