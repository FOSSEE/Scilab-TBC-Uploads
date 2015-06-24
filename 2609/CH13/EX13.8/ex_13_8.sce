////Ex 13.8
clc;
clear;
close;
format('v',6);
Vout=15:20;//V
Vin=24;//V
VR1=12;//V
Vref=12;//V
I4=0;//A(Assumed)
Iout=1;//A(Assumed)
R1=VR1/Iout;//ohm
//Vout=VR1*(1+R2/R1)
R2min=R1*(min(Vout)/VR1-1);//Putting min Vout
R2max=R1*(max(Vout)/VR1-1);//Putting min Vout
disp(R1,"Resistance R1(ohm)");
disp(R2max,R2min,"Minimum & maximum value of R2(ohm)");
disp("A pot of 10 ohm should be used.");
