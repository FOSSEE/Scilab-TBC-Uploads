//Calculations on the Carnot cycle
clc,clear
//Given:
T3=800+273,T1=15+273 //Temperature of a hot and cold reservoir in K
P3=210,P1=1 //Maximum and minimum pressure in bar
//Solution:
//Refer fig 2.21
eta_carnot=1-(T1/T3) //Efficiency of Carnot cycle
T4=T3 //Isothermal process 3-4
g=1.4 //Specific heat ratio(gamma)
P4=P1*(T4/T1)^(g/(g-1)) //Initial pressure of isentropic process 4-1 in bar
R=0.287 //Specific gas constant in kJ/kgK
Q3_4=R*T3*log(P3/P4) //Heat supplied in kJ/kg
W3_4=Q3_4 //Work supplied in kJ/kg
Net_work=eta_carnot*Q3_4 //Net work output in kJ/kg
cv=0.718 //Specific heat at constant volume in kJ/kgK
W4_1=cv*(T4-T1) //Work for isentropic process in kJ/kg
Gross_work=W3_4+W4_1 //Gross work supplied in kJ/kg
work_ratio=Net_work/Gross_work //Work ratio
//Results:
printf("\n The efficiency of the Carnot cycle, eta_carnot = %.1f percent",eta_carnot*100)
printf("\n The work ratio of the Carnot cycle = %.3f\n\n",work_ratio)
