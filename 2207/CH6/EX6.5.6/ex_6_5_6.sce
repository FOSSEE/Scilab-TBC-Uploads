//Example 6.5.6: Average output voltage,RMS output voltage,chopper efficiency and Effective input resistance
clc;
clear;
close;
//given data :
format('v',6)
r=10;//in ohms
d=0.3;//
v=230;//
vch=1.5;//in volts
D=80/100;// duty cycle
V=220;// in volts
Vch=1.5;//in volts
VL_dc=D*(V-Vch);
disp("part (a)")
disp(VL_dc,"Average output voltage,VL_dc(V) = ")
disp("part (b)")
VL_rms=sqrt(D)*(V-Vch);
disp(VL_rms,"RMS output voltage,VL_rms(V) = ")
disp("part (c)")
Po=((v-vch)^2)*(d/r);//in watts
Pi=((d*v*(v-vch))/r);//in watts
cn=Po/Pi;//chopper efficiency
disp("chopper efficiency is "+string(cn)+" or "+string(cn*100)+"%")
disp("part (d)")
D=80/100;// duty cycle
R=20;//in ohm
Ri=R/D;
disp(Ri,"Effective input resistance,Ri(ohm) = ")
