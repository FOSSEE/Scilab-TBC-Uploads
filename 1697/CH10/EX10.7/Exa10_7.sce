//Exa 10.7
clc;
clear;
close;
//given data :
HT=169;//in meter
HR=20;//in meter
d=4.12*(sqrt(HT)+sqrt(HR));//in Km
disp(d,"Maximum distance in Km : ");
r_dash=(4/3)*6370/1000;//in Km
RadioHorizon=sqrt(2*r_dash*HT);//in Km
disp(RadioHorizon,"Radio Horizon in Km : ");