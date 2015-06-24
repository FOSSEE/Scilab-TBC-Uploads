//Calculations for Otto cycle and Limited pressure cycle
clc,clear
//Given:
r=10 //Compression ratio
P1=1 //Pressure at 1 in bar
T1=40+273 //Temperature at 1 in K
Q1=2700 //Heat added in kJ
//Solution:
//Refer fig 2.33
g=1.4 //Specific heat ratio(gamma)
R=0.287 //Specific gas constant in kJ/kgK
cp=1.005 //Specific heat at constant pressure in kJ/kgK
V1=1*R*T1/(P1*100) //Volume at 1 in m^3/kg
V5=V1 //Volume at 5 in m^3/kg
V2=V1/r //Volume at 2 in m^3/kg
V3=V2 //Volume at 3 in m^3/kg
V_s=V1-V2 //Swept volume in m^3/kg
T2=T1*r^(g-1) //Temperature at 2 in K
P2=P1*r^g //Pressure at 2 in bar
//(a)Limited-pressure cycle
P3=70 //Limited maximum pressure in bar
T3=T2*(P3/P2) //Temperature at 3 in K
cv=0.718 //Specific heat at constant volume in kJ/kgK
Q_v=cv*(T3-T2) //Heat supplied at constant volume in kJ
Q_p=Q1-Q_v //Heat supplied at constant pressure in kJ
T4=Q_p/cp+T3 //Temperature at 4 in K
V4=V3*(T4/T3) //Volume at 4 in m^3/kg
T5=T4*(V4/V5)^(g-1) //Temperature at 5 in K
Q2=cv*(T5-T1) //Heat rejected in kJ/kg
W=Q1-Q2 //Work done in kJ/kg
eta1=W/Q1 //Efficiency of Limited pressure cycle
mep1=W/(V_s*100) //Mean effective pressure in bar
//(b)Constant volume cycle
//All the heat is supplied at constant volume in constant volume cycle
T6=Q1/cv+T2 //Temperature at 6 in K
P6=P2*T6/T2 //Pressure at 6 in bar
T7=T6*(1/r)^(g-1) //Temperature at 7 in K
Q2=cv*(T7-T1) //Heat rejected in kJ/kg
W=Q1-Q2 //Work done in kJ/kg
eta2=W/Q1 //Efficiency of constant volume cycle
mep2=W/(V_s*100) //Mean effective pressure in bar
//If gases expanded isentropically to their original pressure of 1 bar, this point is named as 8
P8=P1 //Pressure at 8 in bar
T8=T6*(P8/P6)^((g-1)/g) //Temperature at 8 in K
Q3=cp*(T8-T1) //Heat rejected at constant pressure in kJ/kg
W_inc=Q2-Q3 //Work increased if gas expanded isentropically in kJ/kg
//Results:
printf("\n (a)For Limited pressure cycle\n\t The mean effective pressure, mep = %.2f bar\n\t The thermal efficiency, eta = %.1f percent",mep1,eta1*100)
printf("\n\n (a)For Constant volume cycle\n\t The mean effective pressure, mep = %.1f bar\n\t The thermal efficiency, eta = %.1f percent",mep2,eta2*100)
printf("\n\n   Additional work per kg of charge = %.1f kJ\n\n",W_inc)
