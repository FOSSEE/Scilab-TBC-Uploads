//Resistances connected in parallel R, Source voltage V, Limiting voltage Vl
close();
clear;
clc;
R = 700;//ohm
V = 210;//V
Vl = 110;//V
//Cureent through each 700 ohm resistor 'I1'
I1 = Vl/R;
//Total current drawn from source 'I'
I = 3*I1;
//Voltage across series resistor 'Vx'
Vx = V - Vl;
Rx = Vx/I;
P = V*I;
mprintf('Value of series resistor Rx = %0.1f ohm\nPower drawn from source P = %0.1f W',Rx,P);