//Example q.3: current and voltae
clc;
clear;
close;
format('v',5)
rm=10;//in ohms
im=5;// in mA
i=1;// in amperes
v=5;//in volts
ish=i-(im*10^-3);// in amperes
m=i/(im*10^-3);//ratio
rsh=rm/(m-1);//in ohms
vo=v/i;//in volts
rsh1=vo/(im);//in kilo ohms
disp(rsh,"shunt resistance in ohms to measure current upto 1 A")
disp(rsh1,"shunt resistance in kilo to measure voltage upto 5 V")
