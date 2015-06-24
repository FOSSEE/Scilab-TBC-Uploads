//Exa 4.1
clc;
clear;
close;
//given data :
delta=-90;//in degree
//Formula : HPBW=57.3/(sqrt(L/(2*lambda))) in Degree
n=20;//no. of point sources
//d=lambda/4;//in meter
//L=(n-1)*d
//L=(n-1)*lambda/4
LBYlambda=(n-1)/4;//in meter
HPBW=57.3/(sqrt(LBYlambda/2));// in Degree
disp(HPBW,"HPBW in Degree : ");
D=4*LBYlambda;//Directivity
disp(D,"Directivity : ");
disp("Effective aperture : Ae="+string(D/(4*%pi))+"*lambda^2");
Omega=4*%pi/D;//in steradian
disp("Beam Solid Angle : Omega = "+string(Omega));
//Note : Answer of Ae and omega in the book is wrong.