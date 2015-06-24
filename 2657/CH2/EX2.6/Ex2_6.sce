//Calculations on Otto cycle
clc,clear
//Given:
P1=1 //Pressure at 1 in bar
T1=15+273 //Temperature at 1 in K
r=8 //Compression ratio
Q1=1000 //Heat added in kJ/kg
cv=0.718 //Specific heat at constant volume in kJ/kgK
g=1.4 //Specific heat ratio(gamma)
//Solution:
//Refer fig 2.23
//(a)
P2=P1*(r)^g //Pressure at 2 in bar
T2=T1*r^(g-1) //Temperature at 2 in K
T3=Q1/cv+T2 //Temperature at 3 in K (Round off error)
//(b)
eta=1-1/r^(g-1) //Air standard efficiency
//(c)
W=Q1*eta //Work done in kJ/kg (Round off error)
//(d)
Q2=Q1-W //Heat rejected in kJ/kg
//Results:
printf("\n (a)The maximum temperature in the cycle, T3 = %d degreeC",T3-273)
printf("\n (b)The air standard efficiency, eta = %.1f percent",eta*100)
printf("\n (c)The workdone per kg of air = %d kJ/kg",W)
printf("\n (d)The heat rejected = %d kJ/kg",Q2)
//Round off error in the values of 'T3' and 'W'
