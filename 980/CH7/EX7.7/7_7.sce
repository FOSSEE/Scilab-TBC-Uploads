clc;
clear;
format('v',6);
V1=60;
V2=20;
r1=2;           //in cm
r2=6;           //in cm
r=4;            //in cm
disp("where A and B are constants.","V=A*ln(r)+B","The potential  V as a function of coordinates is ");
disp("B=85.2","A=-36.4","using the given data,we get");
V=-36.4*log(r)+85.2;
disp(V,"The potential at r=4 cm,V(in volt)=");
