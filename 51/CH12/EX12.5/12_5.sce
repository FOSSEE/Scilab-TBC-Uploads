clc;
clear;
exec("C:\Program Files\scilab-5.3.0\bin\TCP\12_5data.sci");
CQ=0.0625;
Q1=CQ*(N1/60)*(2*%pi)*(D1/12)^3;//(ft^3)/sec
disp("gpm",Q1*7.48*60,"or","(ft^3)/sec",Q1,"The discharge=")
CH=0.19;
ha=CH*((N1*2*%pi/60)^2)*((D1/12)^2)/32.2;//ft
disp("ft",ha,"The actual  headrise=")
CP=0.014;
Wshaft=(CP*(1.94)*((N1*2*%pi/60)^3)*((D1/12)^5))/550;//hp
disp("hp",Wshaft,"The shaft horsepower=")
