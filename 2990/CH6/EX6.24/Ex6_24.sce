
clc; funcprot(0);
// Initialization of Variable
Eab=300.0;//average elevation
f=152.4;//focal length in mm
xa=28.4;//x coordinate of a
xb=-22.5;//x coordinate of b
ya=24.5;//y coordinate of a
yb=38.4;//y coordinate of b
Ha=2322.0;//distance in m
ha=400.0;//elevation of a in m
hb=200.0;//elevation of b in m
ab=61.05;//distance in mm
AB=810;//ground length in m
//calculation
Ha=300+AB/ab*f;
Xa=round((Ha-ha)*100/f*xa)/100;
Xb=round((Ha-ha)*100/f*xb)/100;
Ya=round((Ha-hb)*100/f*ya)/100;
Yb=round((Ha-hb)*100/f*yb)/100;
AB=sqrt((Xa-Xb)**2+(Ya-Yb)**2);
disp(round(AB*100)/100,"length AB in m");
H=300+810/AB*(Ha-Eab);
Xa=(H-ha)/f*xa;
Xb=(H-ha)/f*xb;
Ya=(H-hb)/f*ya;
Yb=(H-hb)/f*yb;
AB1=sqrt((Xa-Xb)**2+(Ya-Yb)**2);
disp(AB1,"corrected length AB in m");
disp(round(H*1000)/1000,"flying height in m");
//Xb is calculated wrong in the book that resulted in the error-
clear()

