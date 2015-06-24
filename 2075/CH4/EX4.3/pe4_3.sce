//example 4.3
clc; funcprot(0);
// Initialization of Variable
Rl=10;
V=12;
Vl=5;
//calculation
Pl=Vl^2/Rl;
I=Vl/Rl;
Ps=V*I;
Pic=Ps-Pl;
disp(Pic,"power delivered in watt:")
clear()
