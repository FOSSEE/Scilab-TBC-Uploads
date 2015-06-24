//ex9
//The Ideal Jet-Propulsion Cycle
clear
clc
//Process 1-2 (isentropic compression of an ideal gas in a diffuser)
T1=420;//temp at state 1 in R
v1=850;//velocity at state 1 in ft/s
Cp=0.240;//Btu/lbm.R
T2=T1+v1^2/(2*Cp)/25037;//temp at state 2  (divided by 25037 to convert it into R)
P1=5;//pressure at state 1 in psia
k=1.4;//constant ratio
P2=P1*(T2/T1)^(k/(k-1));//pressure at state 2 in psia
//Process 2-3 (isentropic compression of an ideal gas in a compressor)
rp=10;//constant ratio
P3=rp*P2;//pressure at state 3 in psia
P4=P3;//pressure at state 4
T3=T2*(P3/P2)^(1-1/k);//temp at state 3 in R
//Process 4-5 (isentropic expansion of an ideal gas in a turbine)
//Wcompin=Wturbout from this we get T5=T4-T3+T2
T4=2460;//temp at state 4 in R
T5=T4-T3+T2;//temp at state 5 in R
P5=P4*(T5/T4)^(k/(k-1));//pressure at state 5 in psia
printf('(a) T5 = %.0f R \n',T5);
printf('     P5 = %.1f psia \n',P5 );
//Process 5-6 (isentropic expansion of an ideal gas in a nozzle)
P6=5;//pressure at state 6 in psia
T6=T5*(P6/P5)^(1-1/k);//temp at state 6 in R
v6=sqrt(-1*2*Cp*(T6-T5)*25037);//velocity at state 6 in ft/s
printf(' (b) Velocity v6 = %.0f ft/s \n',v6);
//The propulsive efficiency of a turbojet engine is the ratio of the propulsive power developed Wp to the total heat transfer rate to the working fluid
ms=100;//mass flow rate in lbm/s
Vexit=3288;//exit volume in ft^3
Vinlet=850;//inlet volume in ft^3
Vaircraft=850;//aircraft volume in ft^3

Wp=ms*(Vexit-Vinlet)*Vaircraft/25037;//power in Btu/s
Qin=ms*Cp*(T4-T3);//input heat in kJ/kg
np=Wp/Qin;//efficiency
printf(' (c) Efficiency = %.3f \n',np);