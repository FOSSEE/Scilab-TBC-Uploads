//Example 9.5.2;average voltage 
clc;
clear;
close;
format('v',7)
a1=30;//in degree
a2=75;//in degree
b1=60;//in degree
ia=10;//in amperes
vsrms=230;//in volts
b3=180-a1;//
a3=180-b1;//
b2=180-a2;//
alfa=0;//
vldc=((vsrms*sqrt(2))/%pi)*(cosd(a1)-cosd(b1)+cosd(a2)-cosd(b2)+cosd(a3)-cosd(b3));//
disp(vldc,"average voltage in volts is")
Is_rms=ia*((1/180)*(b1-a1+b2-a2+b3-a3))^(1/2);//
disp(Is_rms," Is_rms(A) = ")
I1_rms=((sqrt(2)*ia)/(%pi))*(cosd(a1)-cosd(b1)+cosd(a2)-cosd(b2)+cosd(a3)-cosd(b3));//
disp(I1_rms," I1_rms(A) = ")
fi=alfa;
FPF=cosd(fi);
disp(FPF,"FPF = ")
DF=I1_rms/Is_rms;
disp(DF," DF = ")
PF=DF*FPF;
disp(PF," PF(lag)= ")
HF=sqrt((1/DF^2)-1);
disp(HF*100," HF(%) = ")
