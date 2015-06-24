//Example 3.50:Resistance and Inductance
clc;
clear;
close;
R2=600;//OHMS
R4=400;//OHMS
R3=1000;//OHMS
C3=0.5;//MICRO-f
r=((R2*R4)/R3);//ohms
l=R2*R4*C3*10^-6;//H
disp(r,"resistance is,(ohm)=")
disp(l,"inductance is,(H)=")
