//Example 3.40:resistance and capacitance
clc;
clear;
close;
r2=1000;//ohms
r4=100;//ohms
c4=0.1;//micro farads
c3=1000;//pF
rs=((c4/(c3*10^-6))*r2);//M-ohm
cs=((r4/r2)*(c3*10^-6));//micro farads
disp(rs*10^-7,"resistance is,(M-ohm)=")
disp(cs*10^6,"capacitance is,(micro-F)")
