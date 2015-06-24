clc
//Example 8.7
//Calculate the cross sectional area, pressure, temperature and mach number at a pt in duct where air velocity is 1400ft/s
P1=30//psia
T1=660//R (Rankine temperature scale)
ratio_T=0.83333//dimentionless
m=10//lbm/s mass flow rate
v1=1400//ft/s
R=4.98*10^4//(ft^2/s^2)*(lbm/lbmol.R)^0.5
k=1.4//dimentionless
M=29//lbm/lbmol
T2=T1*ratio_T//R (Rankine temperature scale)
printf("The temperature at the pt in the duct where air velocity is 1400 ft/s is %f R\n",T2);
c=223*(k*T2/M)^0.5//ft/s
Ma=v1/c//dimentionless (Mach number)
printf("The mach number at the pt in the duct where air velocity is 1400 ft/s is %f\n",Ma);
ratio_t=0.7528//dimentionless
ratio_P=0.3701//dimentionless
ratio_A=1.0587//dimentionless
T=T1*ratio_t//R (Rankine temperature scale)
printf("T=%f\n",T);
P=P1*ratio_P//psia
printf("P=%f",P);