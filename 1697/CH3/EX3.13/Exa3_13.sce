//Exa 3.13
clc;
clear;
close;
//given data :
delf=600;//in KHz
fr=50;//in MHz
Q=(fr*10^6)/(delf*10^3);//unitless
disp(Q,"Quality Factor : ");