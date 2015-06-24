//Exa 6.2
clc;
clear;
close;
//Part (a): Given data :
disp("Part (a) : At the center frequency with a circumference of lambda, the directivity of an axial mode helix is, : D=12*n*Slambda");
n=20;//no. of turns
Slambda=0.472;//in meter
D=12*n*Slambda;//in meter
disp("Ae=(lambda^2/(4*%pi))*D");
disp("Ae="+string(1/(4*%pi*D))+"lambda^2");
disp("Let this be the area of a square. The space between the elements is :")
disp("d=sqrt(Ae)");
disp("d="+string(sqrt(1/(4*%pi*D)))+"lambda");
disp("Part (b) : With a space of 3*lambda the total effective area : ");
disp("Ae=9.02*lambda^2*4");
disp("Ae="+string(9.02*4)+"lambda^2");
disp("D=4*%pi*Ae/lambda^2");
disp("D="+string(4*%pi*36.08));//unitless