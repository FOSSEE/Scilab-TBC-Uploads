//Calculations on Joule cycle
clc,clear
//Given:
P1=1.02,P2=6.12 //Pressure at 1, 2 in bar
T1=15+273,T3=800+273 //Temperature at 1, 3 in K
g=1.4 //Specific heat ratio(gamma)
cp=1.005 //Specific heat at constant pressure in kJ/kgK
//Solution:
//Refer fig 2.18
r_p=P2/P1 //pressure ratio
eta=1-1/r_p^((g-1)/g) //Thermal efficiency
r_w=1-(T1/T3)*r_p^((g-1)/g) //Work ratio
//Results:
printf("\n The thermal efficiency, eta = %.1f percent",eta*100)
printf("\n The work ratio, r_w = %.2f\n\n",r_w)
