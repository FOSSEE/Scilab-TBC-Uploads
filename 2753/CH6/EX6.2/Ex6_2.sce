//Example 6.2: 
clc;
clear;
close;
//given data :
I1=1;// in mA
I2=1.2;// in mA
del_ID=(I2-I1);
V1=-3;// in V
V2=-2.9;// in V
del_VGS=V2-V1;// in V
gm=del_ID/del_VGS;
format('v',4)
disp(gm,"mutual conductance,gm(mS) = ")
