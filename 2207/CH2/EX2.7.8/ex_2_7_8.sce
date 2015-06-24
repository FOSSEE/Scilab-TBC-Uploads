//Example 2.7.8;//resistance and gate power dissipation and frequency
clc;
clear;
close;
//given data :
format('v',7)
g=16;//in volts/ampere
vr=15;//in volts
t=4;//in micro seconds
ig=500;//in mA
rg=(vr/(ig*10^-3))-g;//resistance in ohms
disp("part (a)")
disp(rg,"resistance in series with SCR gate in ohm is")
ig=500;//in mA
rg=(vr/(ig*10^-3))-g;//resistance in ohms
pg=(ig*10^-3)^2*(g);//
disp("part (b)")
disp(pg,"gate power dissipation in Watt is")
ogv=0.3;//in watts
d=(ogv/pg)*100;//
t1=(t)/(d/100);//in micro seconds
f1=(1/(t1*10^-3));//frequency in kHz 
disp("part (c)")
disp(f1,"triggering frequency in kHz is")
