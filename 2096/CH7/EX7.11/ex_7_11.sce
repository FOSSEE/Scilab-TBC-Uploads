//Example 7.11 // the hall angle
clc;
clear;
close;
//given data :
p=0.00912; // resistivity of semiconductor material in ohm-m
B=0.48; // in Wb/m^2
Rh=3.55*10^-4; //  in m^3/C
Jx=1;
Ex=p*Jx;
Ey=Rh*B*Jx;
t=Ey/Ex;
Theta=atand(t)
temp=Theta-round(Theta)
disp("the hall angle is "+string(round(Theta))+" degree and "+string(round(temp*60))+"min");
