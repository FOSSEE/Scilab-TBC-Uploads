
clc; funcprot(0);
// Initialization of Variable
xa=51.23;//x coordinate of a
xb=91.48;//x coordinate of b
ya=48.33;//y coordinate of a
yb=-51.63;//y coordinate of b
f=152.4;//focal length in mm
B=425.0;//actual height in mm
hb=842.86//height B in mm
ha=820.97;//height A in mm
r1=10.42;//in mm
r2=9.67;//in mm
b1=89.12;//base in mm
b=89.43;//base in mm
ra=11.62;//parallax in mm
rb=14.53;//parallax in mm
//calculation
C=0.5*((b1-r1)+(b-r2))
pa=C+ra;
pb=C+rb;
Xa=B*xa/pa;
Xb=xb*B/pb;
Ya=ya*B/pa;
Yb=yb*B/pb;
AB=sqrt((Xb-Xa)**2+(Yb-Ya)**2);
disp(AB,"distance of AB in m")
clear()
