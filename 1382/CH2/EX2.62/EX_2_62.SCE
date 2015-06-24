// Example 2.62:mid band voltage gain and cut off frequency
clc;
clear;
Rs=1;//
ft=500//frequency in mega hertz
Cbc=5;//in pico farad
//H Paramters are
hie=500;//in ohms
hfe=100;
rbe= 900;////
rbb= 100;//
Rl=500;//load resistance in ohms
gm=hfe/rbe;//in mho
Av=((-gm*Rl));//voltage gain
Avs= ((Av*rbe)/(Rs*10^3+rbb+rbe));//mid band voltage gain
fb= ft/hfe;//
disp(Avs,"(Avs)mid band voltage gain is")
disp(fb,"(fb) in mega hertz")
