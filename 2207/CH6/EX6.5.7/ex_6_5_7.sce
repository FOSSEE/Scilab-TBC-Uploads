//Example 6.5.7.a;average output voltage and current
clc;
clear;
close;
//given data :
vs=120;//in volts
vb=1;//in volts
d=0.33;//
rl=10;//in ohms
f=200;//in Hz
Vldc=d*vs;//
Ildc=round(Vldc)/rl;//in amperes
disp(round(Vldc),"average/DC output voltage in volts is")
disp(Ildc,"average load current in amperes is")
