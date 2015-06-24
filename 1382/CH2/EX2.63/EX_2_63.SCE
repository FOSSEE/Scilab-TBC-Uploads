// Example 2.63:mid band voltage gain and cut off frequency
clc;
clear;
Rs=1;//
ft=500//frequency in mega hertz
Cbc=5;//in pico farad
//H Paramters are
gm=100;//in mho
hfe=100;//
rbe=hfe/(gm*10^-3);// in ohms
rbb= 100;//
Rl=500;//load resistance in ohms
Av=((-gm*10^-3*Rl));//voltage gain
Avs= ((Av*rbe)/(Rs*10^3+rbb+rbe));//mid band voltage gain
fb= ft/hfe;//
disp(Avs,"(Avs)mid band voltage gain is")
disp(fb,"(fb) in mega hertz")
