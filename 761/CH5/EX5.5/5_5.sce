clc;
//page no 184
//prob no. 5.5
//An FM transmitter produce 10W of carrier power operating at 15V
Vcc=15;Pc=10;
//Determination of load impedance  seen from collector
Rl=((Vcc)^2)/(2*Pc);
disp('ohm',Rl,'The load impedance is');