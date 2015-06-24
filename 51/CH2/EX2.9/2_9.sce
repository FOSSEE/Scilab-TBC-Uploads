clc;
clear;
dia=6;//ft
l=1;//ft

//horizontal force f1=sw*hc*A
hc=dia/4;//ft
sw=62.4;//lb/ft^3
A=dia/2*l;//ft^2
f1=sw*hc*A;//lb
//this force f1 acts at a height of radius/3 ft above the bottom
ht=(dia/2)/3;//ft
//weight w = sw*volume
w=sw*((dia/2)^2)*%pi/4*l;//lb
//this force acts through centre of gravity which is 4*radius/(3*%pi) right of the centre of conduit
dist=(4*dia/2)/(3*%pi);//ft
//horizontal force that tank exerts on fluid = f1
//vertical force that tank exerts on fluid = w
//resultant force fres =((f1)^2+(w)^2)^0.5
fres =((f1)^2+(w)^2)^0.5;//lb
disp("lb",fres,"The resultant force exerted by the tank on the fluid=");
disp("ft",dist,"above the bottom of the conduit and to the right of the axis of the conduit at a distance of","ft",ht,"The force acts at a distance of")

