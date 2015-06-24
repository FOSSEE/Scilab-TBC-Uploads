//Calculations on six cylinder petrol engine
clc,clear
//Given:
n=6 //Number of cylinders
d=125,l=190 //Bore and stroke in mm
pC=82/100,pH2=18/100 //Composition of Carbon and Hydrogen in petrol
pCO2=11.19/100,pO2=3.61/100,pN2=85.2/100 //Composition of Carbon di oxide, Oxygen, Nitrogen in dry exhaust
P1=1 //Pressure of mixture entering the cylinder in bar
T1=17+273 //Temperature of mixture entering the cylinder in K
m_f=31.3 //Mass of the petrol used in kg/hr
N=1500 //Engine speed in rpm
m=1,T=0+273,P=1.013,V=0.773 //Mass, temperature, pressure, volume, of air in kg, K, bar, m^3
p=23/100 //Composition of Oxygen in air by mass
//Solution:
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
O=16 //Atomic mass of Oxygen(O)
N2=14 //Atomic mass of Nitrogen(N)
A_F_s=(pC*2*O/C+pH2*O/(2*H))/(p) //Stoichiometric air fuel ratio
//Stoichiometric equation of combustion of fuel (petrol)
//   0.82/12[C] + 0.18/2[H2] + [0.21[O2] + 0.79[N2]]*x = a[CO2] + b[CO] + c[H2O] + d1[N2]
//Equating coefficients
a=pC/C,c=pH2/(2*H) //On balancing C and H
d1=pN2/pCO2*a //On taking composition of CO2 and N2 in exhaust
x=d1/0.79 //On balancing N
m_a=(p*2*O)+((1-p)*2*N2) //Mass of air per mole air in kg/mole
A_F_act=x*m_a //Actual air fuel ratio
P_e=(A_F_act-A_F_s)/A_F_s*100 //Percentage excess air
R_a=P*100*V/(m*T) //Specific gas constant for air in kJ/kgK
V_a=A_F_act*R_a*T1/(P1*100) //Volume of air in m^3
//Given, rho_f = 3.35 * rho_a, V_f = 1/3.35 * V_a
V_f=V_a/A_F_act*1/3.35 //Volume of fuel in m^3/kg of fuel 
V_m=V_a+V_f //Total volume of mixture in m^3/kg of fuel
V_m1=V_m*m_f/60 //Mixture aspirated in m^3/min
V_s=(%pi/4)*d^2*l*n*N/2*10^-9 //Swept volume in m^3/s
eta_v=V_m1/V_s*100 //Volumetric efficiency in percent
//Results:
printf("\n The mass of air supplied per kg of petrol, m_a = %.2f kg/kg of fuel",A_F_act)
printf("\n The percentage excess air = %.1f percent",P_e)
printf("\n The volume of mixture per kg of petrol, V_m = %.2f m^3/kg fuel",V_m)
printf("\n The volumetric efficiency of the engine, eta_v = %.0f percent\n\n",eta_v)
