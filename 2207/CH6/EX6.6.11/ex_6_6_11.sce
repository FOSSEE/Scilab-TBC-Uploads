//Example 6.6.11: value of current limiting resistor ,maximum and minimum duty cycle
clc;
clear;
close;
format('v',6)
//given data :
v=325;//in volts
eb=120;//in volts
r=0.2;//in ohms
ra=0.3;//in ohms
e=120;//in volts
rb=0.2;//in ohms
rl=0.3;//in ohms
d=60;//in percentage
i=20;//in amperes
vo=(d/100)*v;//
R=((i*rl)-(v-eb)+(i*rb))/(-i);//
disp("part (a)")
disp(R,"value of current limiting resistor in ohm is")
//value of current limiting resistor is calculated wrong in the textbook
disp("part (b)")
p=15;//
R=9.45;//
vmax=v+(v*(p/100));//
vmin=v-(v*(p/100));//
Dmax=((i*R)/vmin)*100;//
Dmin=((i*R)/vmax)*100;//
disp(Dmax,"maximum duty cycle in percentage is")
disp(Dmin,"minimum duty cycle in percentage is")
