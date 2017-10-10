clc;
clear all;
disp("Heat loss calculations")
k=1.05;// W/(m*C)
ti=600;//degree C
to=70;// degree C
L=0.12;//m
A=0.6*0.6;//m^2
Sfcwall=A/L;

D=0.6;//m
Sfcedge=0.54*D;

Sfccorner=0.15*L;
Sfct=6*Sfcwall+12*Sfcedge+8*Sfccorner;

Q=k*Sfct*(ti-to);

disp("W",Q,"Heat loss through walls, Q =")
