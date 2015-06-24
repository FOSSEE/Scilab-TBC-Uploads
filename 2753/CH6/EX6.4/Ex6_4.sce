//Example 6.4: 
clc;
clear;
close;
//given data :
I_DES=8.7;// in mA
V1=-3;// in V
V_GS=-1;// in V
ID=I_DES*(1-(V_GS/V1))^2;
format('v',6)
disp(ID,"(i). ID(mA) = ")
gmo=-(2*I_DES/V1);
format('v',4)
disp(gmo,"(ii). gmo(mS) = ")
gm=gmo*(1-(V_GS/V1));
format('v',6)
disp(gm,"(iii). gm(mA) = ")
