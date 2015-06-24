clear;
clc;
format('v',7);
x=-2;y=6;z=3;
r=(x^2+y^2)^.5;
B=atand(y/x);
R=sqrt(x^2+y^2+z^2);
X=atand(r/z);
disp([r B z ],'Cylindrical acordinate of P:');
disp([R X B],'Spherical Cordinate of P:');
A=[cosd(B) sind(B) 0;-sind(B) cosd(B) 0;0 0 1]*[y;x+z;0];
disp (A,'A in cylindrical cordinates')