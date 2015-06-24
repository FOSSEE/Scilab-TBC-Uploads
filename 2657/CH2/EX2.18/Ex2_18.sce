//Calculations on dual combustion cycle
clc,clear
//Given:
r=15 //Compression ratio
P1=1,P3=55 //Pressure at 1, 3 in bar
T1=27+273 //Temperature at 1 in K
g=1.4 //Specific heat ratio(gamma)
cp=1.005 //Specific heat at constant pressure in kJ/kgK
cv=0.718 //Specific heat at constant volume in kJ/kgK
//Solution:
//Refer fig 2.31
T2=T1*r^(g-1) //Temperature at 2 in K
P2=P1*r^g //Pressure at 2 in bar
alpha=P3/P2 //Constant volume pressure ratio
T3=T2*(P3/P2) //Temperature at 3 in K
Q1_v=cv*(T3-T2) //Heat supplied at constant volume in kJ/kg
T4=poly(0,"T4") //Defining temperature at 4 as unknown in K
//Given, heat supplied at constant volume, Q1_v is twice of heat supplied at constant pressure, Q1_p
Q1_p=cp*(T4-T3) //Heat supplied at constant pressure in kJ/kg
T4=roots(Q1_v-2*Q1_p) //Temperature at 4 in K
rho=T4/T3 //Cut off ratio
e=r/rho //Expansion ratio
T5=T4/e^(g-1) //Temperature at 5 in K
eta=1-(T5-T1)/((T3-T2)+g*(T4-T3)) //Thermal efficiency
eta=round(100*eta)
//Results:
printf("\n The constant volume pressure ratio, alpha = %.2f",alpha)
printf("\n The cut off ratio, rho = %.2f",rho)
printf("\n The thermal efficiency of the cycle, eta = %d percent\n\n",eta)
