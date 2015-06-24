clc
//Example 8.8
//Calculate the cross sectional area, pressure, temperature and mach number at a pt in duct where air velocity is 1400ft/s
P1=30//psia
T1=660//R (Rankine temperature scale)
m=10//lbm/s mass flow rate
v1=4000//ft/s
R=4.98*10^4//(ft^2/s^2)*(lbm/lbmol.R)^0.5
k=1.4//dimentionless
M=29//lbm/lbmol
T2=T1-v1^2*((k-1)/k)*M/2/R//R (Rankine temperature scale)
printf("The temperature at the pt in the duct where air velocity is 1400 ft/s is %f R\n",T2);
c=223*(k*T2/M)^0.5//ft/s
Ma=v1/c//dimentionless (Mach number)
P2=P1/(T1/T2)^(k/(k-1))//psia
//1 lbf.s^2 = 32.2 lbm.ft
A0=m/(P1*(M*k)^0.5*32.2/223/(T1)^0.5/((k-1)/2+1)^((k+1)/2/(k-1)))//in^2
ratio_A=((Ma^2*(k-1)/2+1)/((k-1)/2+1))^((k+1)/2/(k-1))/Ma//dimentionless
A=ratio_A*A0//in^2