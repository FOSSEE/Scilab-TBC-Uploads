//ques3
//Gas Flow through a Converging–Diverging Duct
clear
clc
Cp=0.846;//specific heat at constant pressure in kJ/kg/K
R=0.1889;//gas constant for substance
T0=473;//temp at state 0 in K
T1=T0;//temp at state 1 in K
P0=1400;//pressure at state 0 in kPa
P1=P0;//pressure at state 1 in kPa
//from Eqn 17-5
P=1200;//pressure in kPa
k=1.289;
T=T0*(P/P0)^(1-1/k);//Temp in K
//from Eqn 17-4
T=457;//K
V=sqrt(2*Cp*(T0-T)*1000);//velocity in m/s
printf('Velocity = %.1f m/s \n',V);
//From the ideal-gas relation,
d=P/(R*T);
printf(' Density = %.1f kg/m^3 \n',d);
//From the mass flow rate relation,
ms=3;//mass flow in kg/s
A=ms/(d*V);//area in m^2
printf(' Area = %.1f cm^2 \n',A*10000);
//speed
k=1.289;
c=sqrt(k*R*T*1000);//speed in m/s
Ma=V/c;
printf(' Mach number  = %.3f ',Ma);
