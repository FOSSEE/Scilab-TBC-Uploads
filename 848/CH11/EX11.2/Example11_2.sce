//clear//
//Caption:Pumping rate and zero-signal gain
//Example11.2(a) and (b)
//page 397
clear;
clc;
close;
I = 100e-03; //bias current in Amps
w = 3e-06; //active area width in meters
L = 500e-06; //amplifier lenght in meters
d = 0.3e-06; //active area thickness in meters
q = 1.602e-19; //charge in coulombs
Rp = I/(q*d*w*L);
disp(Rp,'The pumping rate in electrons/s.cubicmeter is Rp =')
Tuo = 0.3; //the confinement factor
a = 2e-20; //gain coefficient in square meter
J = I/(w*L); //bias current density in Amp/squre meter
nth = 1e24; //threshold density per cubic meter
Tuor = 1e-09; //Time constant in seconds
g0 = Tuo*a*Tuor*((J/(q*d))-(nth/Tuor))
disp(g0/100,'The zero-signal gain per cm is g0 = ')
//Result
// The pumping rate in electrons/s.cubicmeter is Rp =  1.387D+33  
// The zero-signal gain per cm is g0 = 23.229297
