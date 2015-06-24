

//exapple 2.9 
clc; funcprot(0);
// Initialization of Variable
f=20//focal length
xa=2.65;//x coordinate of a
xb=-1.92;//x coordinate of b
ya=1.36;//y coordinate of a
yb=3.65;//y coordinate of b
ha=500;//elevation of a
hb=300;//elevation of b
ABg=545;
ab=5.112;
hab=ha/2+hb/2;
Happ=hab+ABg*f/ab

Xa=(Happ-ha)/f*xa;
Xb=(Happ-hb)/f*xb;
Ya=(Happ-ha)/f*ya;
Yb=(Happ-hb)/f*yb;
AB=sqrt((Xa-Xb)^2+(Ya-Yb)^2);
Hact=ABg/AB*(Happ-hab)+hab;
disp(Hact,"actual flying height of A & B in (m):");
