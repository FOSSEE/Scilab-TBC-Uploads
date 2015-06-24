//Calculations on Otto cycle
clc,clear
//Given:
r=8 //Compression ratio
T1=20+273 //Temperature at 1 in K
P1=1 //Pressure at 1 in bar
Q1=1800 //Heat added in kJ/kg
cv=0.718 //Specific heat at constant volume in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
//Solution:
T2=T1*r^(g-1) //Temperature at 2 in K
T3=Q1/cv+T2 //Temperature at 3 in K (printing error)
P2=P1*(r)^g //Pressure at 2 in bar
P3=P2*(T3/T2) //Pressure at 3 in bar
T4=T3/r^(g-1) //Temperature at 4 in K
eta=1-1/r^(g-1) //Air standard efficiency
W1_2=cv*(T1-T2) //Work done for process 1-2 in kJ/kg
W3_4=cv*(T3-T4) //Work done for process 3-4 in kJ/kg
W=W1_2+W3_4 //Net work done for the cycle in kJ/kg
V1=cv*(g-1)*10^3*T1/(P1*10^5) //Ideal gas equation, Volume at 1 in m^3/kg
V2=V1/r //Volume at 2 in m^3/kg
V_s=V1-V2 //Swept volume in m^3/kg
mep=W*1000/(V_s*10^5) //Mean effective pressire in bar
//Results:
printf("\n The maximum temperature, T3 = %d K",T3)
printf("\n The maximum pressure, P3 = %.1f bar",P3)
printf("\n The temperature at the end of the expansion process, T4 = %d K",T4)
printf("\n The air standard efficiency, eta = %.1f percent",eta*100)
printf("\n The mean effective pressure of the cycle, mep = %.1f bar\n\n",mep)
//Answers in the book are wrong
