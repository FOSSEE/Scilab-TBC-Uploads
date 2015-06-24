//Calculations on dual combustion cycle
clc,clear
//Given:
r=18 //Compression ratio
P1=1.01,P3=69 //Pressure at 1, 3 in bar
T1=20+273 //Temperature at 1 in K
cv=0.718 //Specific heat at constant volume in kJ/kgK
cp=1.005 //Specific heat at constant pressure in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
R=0.287 //Specific gas constant in kJ/kgK
//Solution:
T2=T1*r^(g-1) //Temperature at 2 in K
P2=P1*r^g //Pressure at 2 in bar
T3=T2*(P3/P2) //Temperature at 3 in K
Q_v=cv*(T3-T2) //Heat added at constant volume in kJ/kg
//Given, Heat added at constant volume is equal to heat added at constant pressure
T4=Q_v/cp+T3 //Temperature at 4 in K
rho=T4/T3 //Cut off ratio
T5=T4*(rho/r)^(g-1) //Temperature at 5 in K
Q1=2*Q_v //Heat supplied in cycle in kJ/kg
Q2=cv*(T5-T1) //Heat rejected in kJ/kg
eta=1-Q2/Q1 //Thermal efficiency
W=Q1-Q2 //Work done by the cycle in kJ/kg
V1=1*R*T1/(P1*100) //Volume at 1 in m^3/kg
V2=V1/r //Volume at 2 in m^3/kg
V_s=V1-V2 //Swept volume in m^3/kg
mep=W/(V_s*100) //Mean effective pressure in bar
//Results:
printf("\n The air standard efficiency, eta = %.1f percent",eta*100)
printf("\n The mean effective pressure, mep = %.2f bar\n\n",mep)
