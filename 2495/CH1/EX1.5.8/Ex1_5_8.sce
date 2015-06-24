clear
clc
T1=456.15;//boiling temperature of iodine in K
T2=389.65;//vapour pressure temperature of iodine in K
P1=760;//pressure in torr
P2=100;//vapour pressure in torr
DelHm_f=15.65;//heat of fusion in kJ/mol
R=8.314;//in J/K
DelHm_v=(2.303*R*log10(P1/P2))/((1/T2)-(1/T1));//heat of vapourization in J/mol
DelHm_s=(DelHm_f*1000)+DelHm_v;//heat of sublimation in J/mol
T=311.85;//temperature at solid vapour equilibrium in K
P=1;//pressure at solid vapour equilibrium in torr
K1=(DelHm_s)/(2.30*R);//
K2=(DelHm_v)/(2.30*R);//
T0=(K1-K2)/((K1*(1/T))-(K2*(1/T2))-log10(P2));//triple point temperature in K
printf('\nT0=%.1f K',T0)
P0=10^(K1*((1/T)-(1/T0)));//triple point pressure in torr
printf('\nP0=%.2f torr',P0)

//There are some errors in the solution given in textbook
//page 19

