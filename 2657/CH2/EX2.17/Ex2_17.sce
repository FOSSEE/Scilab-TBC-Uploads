//Calculations on dual combustion cycle
clc,clear
//Given:
P1=1 //Pressure at 1 in bar
T1=50+273 //Temperature at 1 in K
r=14,rho=2,alpha=2 //Compression ratio, cut off ratio, pressure ratio
g=1.4 //Specific heat ratio(gamma)
cp=1.005 //Specific heat at constant pressure in kJ/kgK
cv=0.718 //Specific heat at constant volume in kJ/kgK
//Solution:
//Refer fig 2.30
T2=T1*ceil(100*r^(g-1))/100 //Temperature at 2 in K
P2=round(P1*r^g) //Pressure at 2 in bar
P3=alpha*P2 //Pressure at 3 in bar
T3=T2*(P3/P2) //Temperature at 3 in K
T4=T3*rho //Temperature at 4 in K
e=r/rho //Expansion ratio
T5=T4/e^(g-1) //Temperature at 5 in K (Round off error)
Q1=cv*(T3-T2)+cp*(T4-T3) //Heat added in kJ/kg
Q2=cv*(T5-T1) //Heat rejected in kJ/kg
eta=1-Q2/Q1 //Air standard efficiency
//Results:
printf("\n The temperature\n\tT1 = %d K\n\tT2 = %d K\n\tT3 = %d K\n\tT4 = %d K\n\tT5 = %d K",T1,T2,T3,T4,T5)
printf("\n\n The ideal thermal efficiency, eta = %.1f percent\n\n",eta*100)
//Round off error in the value of 'T5'
