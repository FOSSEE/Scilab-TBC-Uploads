//Example 1_3
clc;
clear;
close;
format('v',6);
//given data : 
Vs=12;//V
Req=2+4*(2+2)/(4+(2+2));//ohm
I=Vs/Req;//A
I1=I;//A(Current in first 2 ohm resistance)
disp(I1,"Current in first 2 ohm resistance(A)");
I2=I/2;//A(Current in 4 ohm resistance)
disp(I2,"Current in 4 ohm resistance(A)");
I3=I/2;//A(Current in remaining 2 ohm resistances)
disp(I3,"Current in remaining 2 ohm resistances(A)");
