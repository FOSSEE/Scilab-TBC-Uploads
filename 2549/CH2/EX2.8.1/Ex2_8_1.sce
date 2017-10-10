//Ex2.8.1
//calculation of the reverse and forward dynamic resistance.
clc;
clear;
//given
Io=1*10^-6;//reverse saturation current for diode
Vr=-0.52;//reversed voltage
Vf=0.52;//forward voltage  
//room temperature
T=27;//temp in celsius
T=T+273;//temp in kelvin
n=1//n is emission coefficient
k=8.62*10^-5;// boltzmann's constant
Vt=T*k;//voltage equivalent at given T
Rf=n*Vt/(Io*exp(Vf/(n*Vt)));//dynamic resistance in forward biased condition
disp('ohm',Rf,'dynamic resistance in forward biased condition is :')
Rr=n*Vt/(Io*exp(Vr/(n*Vt)));//dynamic resistance in reverse biased condition
disp('ohm',Rr,'dynamic resistance in reverse biased condition is :')



