//Example 6.5.2: chooper efficiency,input resistance and average load current
clc;
clear;
close;
format('v',6)
//given data 
r=10;//in ohms
f=1;//in kHz
t=1/f;//in ms
d=0.3;//
v=200;//
vch=2;//in volts
Po=((v-vch)^2)*(d/r);//in watts
Pi=((d*v*(v-vch))/r);//in watts
cn=Po/Pi;//chopper efficiency
disp("part (a)")
disp("chopper efficiency is "+string(cn)+" or "+string(cn*100)+"%")
disp("part (b)")
R1=r/d;//
disp(R1,"input resistance in ohm is")
disp("part (c)")
vldc=59.4;//V
r=10;//ohm
Ildc=vldc/r;//amp
disp(Ildc,"average load current is,(A)=")
