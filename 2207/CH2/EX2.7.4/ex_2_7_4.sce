//Example 2.7.4;//resistance and duty cycle
clc;
clear;
close;
//given data :
format('v',7)
vr=15;//in volts
t=20;//in micro seconds
pd=0.3;//power dissipation in watts
Ig=poly(0,"Ig");
p=-5+Ig+10*Ig^2;//
x=roots(p);//
rg=(vr-(1+10*x(2,1)))/(x(2,1));//resistance in ohms
disp("part (a)")
disp(rg,"resistance Rg in ohm is")
pgm=5;//peak power in watts
d=(pd/pgm)*100;//duty cycle 
disp("part (b)")
disp(d,"duty cycle in percentage is")
tt=(t)/(d/100);//in micro seconds
f=(1/(tt*10^-3));//triggering frequency in kHz
disp("part (c)")
disp(f,"triggering frequency in kHz is")
