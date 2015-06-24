//Example 4.9
clc;
clear;
close;
format('v',9);
//Given data :
S1=1;//sp. gravity
S2=13.6;//sp. gravity
h1=120/1000;//m
P_diff=h1*(S2-S1);//meter of water
disp("Difference in pressure head is "+string(P_diff)+" meter of water");
w=1000;//kg/m^3
P_diff=P_diff*w*9.81;//Pa or Nm^2
disp(P_diff,"In terms of pressure intensity, the difference of pressure in N/m^2 : ");
