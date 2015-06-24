clc;
clear;
exec("C:\Program Files\scilab-5.3.0\bin\TCP\12_3data.sci");
V=Q/((%pi/4)*(D/12)^2);//ft/sec
hL=KL*(V^2)/(2*32.2);//ft
//from value of T
pv=0.5069;//psi
sw=62.22;//lb/(ft^3); sw =specific weight
z1max=(patm*144/sw)-hL-(pv*144/sw)-NPSHr;//ft
disp("ft",z1max,"The maximum height at which the pump can be located=")