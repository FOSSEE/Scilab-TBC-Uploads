clear
clc
P0=100;//in atm
P=1;//in atm
P2=31.82;//in torr
rho=0.996;//in gm/cm^3
R=0.082;//in dm^3atm/(molK)
T=303.15;//in K
P1=P2*(10^(((18/(rho*1000))*(P0-P))/(2.303*R*T)))
printf('P1=%.1f torr',P1)

//page 29
