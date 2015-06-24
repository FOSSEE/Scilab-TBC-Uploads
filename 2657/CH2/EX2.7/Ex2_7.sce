//Calculations on Otto cycle
clc,clear
//Given:
P1=1.05,P2=13,P3=35 //Pressure at 1, 2, 3 in bar
T1=15+273 //Temperature at 1 in K
cv=0.718 //Specific heat at constant volume in kJ/kgK
R=0.287 //Specific gas constant in kJ/kgK
//Solution:
r="V1/V2" //Compression ratio
g=R/cv+1 //Specific heat ratio(gamma)
r=(P2/P1)^(1/g) //By adiabatic process relation
eta=1-1/r^(g-1) //Air standard efficiency
T2=P2*T1/(P1*r) //Temperature at 2 in K
T3=(P3/P2)*T2 //Temperature at 3 in K
Q1=cv*(T3-T2) //Heat added in kJ/kg
W=Q1*eta //Work done in kJ/kg
V1=1*R*10^3*T1/(P1*10^5) //Ideal gas equation, Volume at 1 in m^3/kg
V2=V1/r //Volume at 2 in m^3/kg
V_s=V1-V2 //Swept volume in m^3/kg
mep=W*1000/(V_s*10^5) //Mean effective pressire in bar
//Results:
printf("\n The air standard efficiency, eta = %.1f percent",eta*100)
printf("\n The compression ratio, r = %d",r)
printf("\n The mean effective pressure, mep = %.2f bar\n",mep)
