//Exa 2.4
clc;
clear;
close;
//Given data : 
P=8;//no. of poles
f=50;//in Hz
fr=1.5;//in Hz
//Formula : fr=S*f
S=fr/f;//slip(unitless)
Ns=120*f/P;//in rpm
//Formula : S=(Ns-Nr)/Ns
Nr=Ns-S*Ns;//in rpm
disp(round(Nr),"Motor running speed in rpm : ");
disp(S*100,"Slip(in %):");