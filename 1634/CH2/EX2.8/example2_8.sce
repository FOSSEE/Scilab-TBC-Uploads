

//exapple 2.8 
clc; funcprot(0);
// Initialization of Variable
f=20//focal length
xa=2.65;//x coordinate of a
xb=-1.92;//x coordinate of b
ya=1.36;//y coordinate of a
yb=3.65;//y coordinate of b
H=2500;
ha=500;//elevation of a
hb=300;//elevation of b
Xa=(H-ha)/f*xa;
Xb=(H-hb)/f*xb;
Ya=(H-ha)/f*ya;
Yb=(H-hb)/f*yb;
AB=sqrt((Xa-Xb)^2+(Ya-Yb)^2);
disp(AB,"distance between A & B in (m):")
clear
