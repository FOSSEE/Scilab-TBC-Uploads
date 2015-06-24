//Example 4.8
clc;
clear;
close;
format('v',9);
//Given data :
S1=0.9;//sp. gravity
S2=13.6;//sp. gravity
h1=12.5/100;//m
P_AB=h1*(S2-S1);//meter of water
disp("Difference in pressure head at the points A & B is "+string(P_AB)+" meter of water");
w=1000;//kg/m^3
P_diff=P_AB*w*9.81;//Pa or Nm^2
disp(P_diff,"In terms A pressure entirely, the difference of pressure in N/m^2 : ");
