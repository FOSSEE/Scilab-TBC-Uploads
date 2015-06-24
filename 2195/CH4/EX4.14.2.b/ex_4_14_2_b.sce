//Example 4.14.2.b:error
clc;
clear;
close;
format('v',6)
T1=3;//
T=0:3;
Vrms=200*(sqrt((1/T1)*(intsplin(T,T^2))));//in volts
Vav=200*(1/T1)*(intsplin(T,T));// in volts
ff=Vrms/Vav;//
ff1=1.11;//form factor of sine wave
per=((ff1/ff)-1)*100;//percentage errpr
disp(per,"percentage error in meter indication is")
