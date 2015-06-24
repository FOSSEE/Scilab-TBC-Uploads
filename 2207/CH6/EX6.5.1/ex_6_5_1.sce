//Example 6.5.1:average load voltage,RMS load voltage ,Form factor and Ripple factor
clc;
clear;
close;
format('v',6)
//given data 
f=1;//in kHz
t=1/f;//in ms
d=0.3;//
v=200;//
vch=2;//in volts
vldc=(v-vch)*d;//average load voltage in volts
disp("part (a)")
disp(vldc,"average load voltage in volts is")
disp("part (b)")
vlrms=(v-vch)*sqrt(d);//RMS load voltage in volts
disp(vlrms,"RMS load voltage in volts is")
disp("part (c)")
FF=vlrms/vldc;//
disp("ripple factor is "+string(FF)+" or "+string(FF*100)+"%")
disp("part (d)")
rf=sqrt(FF^2-1);//
disp("ripple factor is "+string(rf)+" or "+string(rf*100)+"%")
