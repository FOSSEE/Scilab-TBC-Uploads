//Example 1_1
clc;
clear;
close;
format('v',6);
//given data : 
Vs=20;//V
Rse=5;//ohm(Internal Resistance)
//Source Conversion
Is=Vs/Rse;//A
Rsh=Rse;//ohm(same)
disp(Is,"Equivalent current source(A)");
disp(Rsh,"Internal resistance in parallel(ohm)")
