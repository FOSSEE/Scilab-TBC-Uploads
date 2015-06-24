clear
clc
T=263.15;//in K
P2=1.95;//in torr
rho=0.920;//in gm/cm^3
P=1;//in atm
R=0.082;//in dm^3atm/(molK)
P1=P2*exp((18/(rho*1000))*(P-(P2/760))/(R*T))
printf('P1=%.3f torr',P1)

//page 29
