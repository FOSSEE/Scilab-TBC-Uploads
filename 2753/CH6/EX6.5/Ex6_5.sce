//Example 6.5: 
clc;
clear;
close;
//given data :
format('v',4)
ID=3;// in mA
I_DSS=9;// in mA
Vp=-4.5;// in V
Vgs=-Vp*(sqrt(ID/I_DSS)-1);
disp(Vgs,"Vgs(V) = ")
