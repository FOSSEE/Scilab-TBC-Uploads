clear
clc
//Example 2.4 CAPILLARY RISE IN A TUBE
d=1.6*10^-3; //[m]
A=%pi*d^2/4; //area[m^2]
Gamma=9790; //[N/m^3]
sigma=0.073; //[N/m]
//Force balance, Ft-W=0, W=Gamma*Δh*A, theta=0°(assume)
theta=0;
Ft=sigma*%pi*d*cosd(theta) //surface tension force [N]
delh=Ft*10^3/(Gamma*A) //Δh[mm]
printf("\n The height above the reservoir level, the water rises in a glass tube = %.1f mm.\n",delh)