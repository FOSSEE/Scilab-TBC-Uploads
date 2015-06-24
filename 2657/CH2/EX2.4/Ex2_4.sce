//Calculations on constant volume cycle
clc,clear
//Given:
P1=97 //Pressure at the beginning(1) in kN/m^2
T1=40+273 //Temperature at the beginning(1) in K
r=7 //Compression ratio
Q=1200 //Heat supplied in kJ/kg
g=1.4 //Specific heat ratio(gamma)
cv=0.718 //Specific heat at constant volume in kJ/kgK
//Solution:
//(a)
T2=T1*(r)^(g-1),T3=round(Q/cv+T2) //Temperature at 2, 3 in K
//(b)
eta=1-1/r^(g-1) //Thermal efficiency
//(c)
W=Q*eta //Workdone per cycle in kJ/kg
//Results:
printf("\n (a)The maximum temperature attained in the cycle, T3 = %d degreeC",T3-273)
printf("\n (b)The thermal efficiency of the cycle, eta = %.1f percent",eta*100)
printf("\n (c)The workdone during the cycle/kg of working fluid, W = %d kJ\n\n",W)
