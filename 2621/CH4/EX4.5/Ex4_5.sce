// Example 4.5
clc;
clear;
close;
format('v',6);
// Given data
V1= 2;// in V
V2= -1;// in V
R=100;// in Ω (assumed)
Vs1= V1*(R/2)/(R+R/2);// in V
Rf= 2*R;// in Ω
Vo_1= Vs1*(1+Rf/R);// in V
Vs2= V2*(R/2)/(R+R/2);// in V
Vo_2= Vs2*(1+Rf/R);// in V
Vout= Vo_1+Vo_2;//output voltage in V
disp(Vout,"The output voltage in volts is : ");




