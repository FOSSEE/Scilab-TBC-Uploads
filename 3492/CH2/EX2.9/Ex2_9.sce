clc
//Chapter2
//Ex_2.9
//Given
P=40 //in Watt
V=120 //in Volts
D=33*10^-6 //in meter
L=0.381 //in meter
To=293 // in kelvin
P_radiated=40//in watt
epsilon=0.35
sigma_s=5.6*10^-8 //in W/m2/K4
I=P/V
A=%pi*D^2/4
R=V/I // resistance of the filament
p_t=R*A/L // resistivity of tungsten
p_o=5.51*10^-8 // resistivity at room temperature in ohm*m
//p_t=p_o*(T/To)^1.2
T=To*(p_t/p_o)^(1/1.2)
disp(T,"Temperature of the bulb when it is operated at the rated voltage in Kelvin is ")
A=L*%pi*D
//Stefans Law
T=(P_radiated/(epsilon*sigma_s*A))^(1/4)
disp(T,"Temperature of the filament in kelvin is")
