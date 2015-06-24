//Exa 3.13
clc;
clear;
close;
format('v',5);

//Given Data :
T1=450;//K
T2=280;//K
Q1=1200;//KJ
W=0.15;//KWh
W=W*3600;//KJ
Eta_a=W/Q1*100;//%
disp(Eta_a,"Actual Efficiency of Engine in % : ");
Eta_c=(1-T2/T1)*100;//%
disp(Eta_c,"Carnot Efficiency of Engine in % : ");
disp("We would not issue a patent as actual efficiency is greater than carnot efficiency.");
