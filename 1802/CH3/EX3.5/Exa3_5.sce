//Exa 3.5
clc;
clear;
close;
//Given Data :
format('v',7);
m=75-45;//in meter
L=300;//in meter
T=2500;//in Kg
w=0.9;//in kg/meter
x=L/2-T*m/(w*L);//in meters
disp(x,"x=");
disp("The negative sign of x shows that point A is on the side of O.");
x=L/2-x;//in meter
disp("Centre point P from O is "+string(L/2-x)+" meters.");
y=w*x^2/(2*T);//in meter
disp("Height of point P, y= "+string(y))
x=L/2-T*m/(w*L);//in meters
z=w*(L-x)^2/(2*T);//in meters
disp("Height of B above O is, z="+string(z)+" meters.");
disp("The mid point of the line is "+string(z-y)+" meter below point B, i.e., "+string(75-(z-y))+" meter above water level.");