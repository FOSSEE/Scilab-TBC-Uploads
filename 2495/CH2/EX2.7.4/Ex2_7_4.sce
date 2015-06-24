clear
clc
P0=100;//vapour pressure in torr
P2=760;//in torr
T2=353.15;//in K
T1=300.15;// in K
DelSm_v=87.03;//entropy in J/Kmol
R=8.314;//in J/Kmol
P1=P2/(10^((DelSm_v*(T2-T1))/(2.303*R*T1)))
printf('P1=%.1f torr',P1)
X=(P1-P0)/P1;//Mole fraction of solute
printf('\nX=%.4f',X)
T0=(1/T2)+((R*log(1-X))/(DelSm_v*T2))
Tb=1/T0;//Boiling point of solution
printf('\nTb=%.1f K',Tb)

//page 52
