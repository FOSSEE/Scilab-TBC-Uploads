//Example 1_2
clc;
clear;
close;
format('v',6);
//given data : 
Is=100;//A
Rsh=10;//ohm
//Source Conversion
Vs=Is*Rsh;//V
disp(Vs,"Equivalent voltage source(V)");
Rse=Rsh;//ohm
disp(Rse,"Internal resistance in series(ohm)");
