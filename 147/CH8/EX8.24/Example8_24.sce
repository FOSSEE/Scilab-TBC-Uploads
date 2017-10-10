//input resistance hie, reverse voltage ratio hre
//forward current gain hfe, output admittance hoe
close();
clear;
clc;
hie = 1500;
hfe = 40;
hre = 0;
hoe = 30;
Ri = 1000;//ohm
Rc2 = 20000;
Rc1 = 10000;
Rb1 = 5000;
Rb2 = 5000;
Av2 = -hfe*Rc2/(hie*(1+hoe*10^(-6)*Rc2));
Zin2 = Rb2*hie/(Rb2+hie);
Av1 = -hfe*Zin2*Rc1/(hie*(Rc1+Zin2+hoe*Zin2*Rc1*10^(-6)));
Zin1 = Rb1*hie/(Rb1+hie);
//vin/vi = vin_i
vin_i = Zin1/(Zin1+Ri);
Av = vin_i*Av1*Av2
mprintf('Final stage voltage gain Av2 = %0.1f\nFinal stage input impedance Zin2 = %0.3f k ohm \nInitial staage voltage gain Av1 = %0.1f\nAmplifier input impedance Zin1 = %0.3f k ohm\nAmplifier voltage gain = %0.0f',Av2,Zin2/1000,Av1,Zin1/1000,Av);