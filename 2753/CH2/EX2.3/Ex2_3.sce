//Example 2.3: 
clc;
clear;
close;
//given data :
V=120;//in V
Vz=50;//in V
vd5=V-Vz;//voltage drop across 5 ohm resistor
R=5;// in ohm
I5=vd5/R;//current through 5 ohm resistor
Rl=10;// in k-ohm
Il=Vz/(Rl*10^3);//current through load resistor
Iz=I5-Il;//in A
format('v',7)
disp(Iz,"current through zener diode is ,(A)=")
