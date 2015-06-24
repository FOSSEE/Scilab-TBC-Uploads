clc
clear
//Input data
K1=0.168//Thermal conductivity of the briks in W/m.K
K2=0.042//Thermal conductivity of cork in W/m.K
d1=0.08//Thickness of the brick in m
d2=0.04//Thickness of the cork in m
T1=20+273//Outer temperature in K
T2=10+273//Inner temperature in K

//Calculations
T=((d2*K1*T1+d1*T2*K2)/(d1*K2+d2*K1))//The temperature of the interface in K
dT=(T1-T)//Difference in temperature in the bricks in K
tg=(dT/d1)//Temperature gradient in the bricks in K/m
tc=(T-T2)/d2//Temperature gradient in the cork in K/m

//Output
printf('Temperature gradient in the bricks is %3.2f K/m \n Temperature gradient in the cork is %3.2f K/m',tg,tc)
