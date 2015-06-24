//Example 2.26://resistance
clc;
clear;
close;
r1=185;//ohm
r2=205;//ohm
r3=215;//ohm
R31=195;//OHM
r4=200;//ohm
R=r1+r2+r3+r4+R31;//ohm
r5=1100;//ohm
R1=(R-r4)+((r5*r4)/(r5+r4));//
v1=85;//V
V=(v1*R1)/round(R1-(R-r4));//V
disp(round(V),"voltage is,(V)=")
I=round(V)/R;//A
vd4=I*r4;//V
x=0.5;//% allowable
vd41=(vd4)-(vd4*x)/100;//
rv=((vd41*(R-r4)*r4))/((V*r4)-((R*vd41)));//
disp(rv*10^-3,"resistance is ,(k-ohm)=")
//resistance is calculated wrong in the textbook

