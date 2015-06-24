//C7H16 in Petrol engine
clc,clear
//Given:
p_v=21 //Percentage of Oxygen in air by volume
p_e=50 //Percentage of excess air supplied
//Solution:
m_f=100 //Mass of fuel (assume) in kg
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
O=16 //Atomic mass of Oxygen(O)
N=14 //Atomic mass of Nitrogen(N)
a=poly(0,'a') //Defining unknown number of moles of stoichiometric oxygen
//Combustion equation
//m_f/(7*C+16*H)[C7H16] + (1+p_e/100)*[a[O2] + (100-p_v)/p_v*a[N2]]  =  b[CO2] + d[O2] + e[N2] + f[H2O]
//Equating coefficients
b=m_f/(7*C+16*H)*7 //Moles of CO2 on balancing of C
f=m_f/(7*C+16*H)*16/2 //Moles of H2O on balancing of H
d=p_e/100*a //Excess moles of oxygen
a=roots((1+p_e/100)*a-(b+d+f/2)) //Balancing Oxygen of both sides
m_a=a*2*O+(100-p_v)/p_v*a*2*N //Mass of air supplied in kg
A_F=m_a/m_f //Air fuel ratio
d=p_e/100*a //Moles of Oxygen in products of combustion
e=(1+p_e/100)*(100-p_v)/p_v*a //Moles of Nitrogen in products of combustion
nT=b+d+e+f //Total number of moles in product of combustion
pH2O=f/nT*100,pCO2=b/nT*100,pO2=d/nT*100,pN2=e/nT*100 //Percentage volumetric composition of the products of combustion
//Results:
printf("\n (a)The stoichiometric air fuel consumption by mass, A_F = %.2f:1",A_F)
printf("\n (b)The percentage volumetric composition of the products\n\t CO2 = %.2f\n\t O2 = %.2f\n\t N2 = %.1f\n\t H2O = %.2f\n\n",pCO2,pO2,pN2,pH2O)
