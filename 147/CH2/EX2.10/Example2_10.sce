//Resistance R, Voltage V
close();
clear;
clc;
V = 110;//V
//From previous question
Rao = 1.5;//ohm
Rbo = 1;
Rco = 3;
Rcd = 3;
Rth = Rao + Rbo*(Rco+Rcd)/(Rbo+Rco+Rcd);
//For maximum power
Rad = Rth;
mprintf('Rad = %0.2f ohm',Rad);