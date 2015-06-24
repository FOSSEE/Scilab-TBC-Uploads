//Example 3.28:Resistance and Inductance
clc;
clear;
close;
r3=100;//ohms
c4=0.1;//micro-farads
r2=834;//ohms
c2=0.124;//micro farads
la=r2*r3*c4*10^-3;//mH
r1=(r3)*(c4/c2);//ohms
disp(la,"inductance is,(mH)=")
disp(r1,"resistance is,(ohm)=")
