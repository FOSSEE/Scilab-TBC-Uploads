// Exa 9.4
clc;
clear;
close;
format('v',6)
// Given data
Rating = 25;// in KVA
f = 50;// in Hz
Io = 15;// in A
Wo = 350;// in W
Vo = 230;// in V
// No load power factor
phi_o = acosd(Wo/(Vo*Io));
// active component of current 
Ic = Io*cosd(phi_o);// in A
disp(Ic,"The active component of current in A is");
// magnetizing component of current 
Im = Io*sind(phi_o);// in A
disp(Im,"The magnetizing component of current in A is");
