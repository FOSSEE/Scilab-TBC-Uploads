//Example 11.9 //voltage
clc;
clear;
close;
format('v',5)
vw=60;//in volts
vt=12;//in volts
tv=vw+vt;//in volts
vs=600;//in volts
va=vs-tv;//in volts
vr=578;//volts
vn=10;//in volts
vtn=tv-vn;//in volts
vad=vs-vr;//
vp=vtn-vad;//in volts
disp("part (a)")
disp(va,"voltage available to trolley when it is at the far end without using boosters in volts is")
disp("part (b)")
disp("positive booster should provide boost of "+string(vp)+" volts")
