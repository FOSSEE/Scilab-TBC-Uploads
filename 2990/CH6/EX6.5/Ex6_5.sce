
clc; funcprot(0);
// Initialization of Variable
xa=45.35;
xb=-40.16;
f=152.4;//focal length
H=1500.0;//actual height
ha=200.0;//height A
hb=150.0;//height B
ya=38.41;
yb=-45.65;
//calculation
Xa=xa*(H-ha)/f;
Ya=ya*(H-hb)/f;
Xb=xb*(H-ha)/f;
Yb=yb*(H-hb)/f;
AB=sqrt((Xb-Xa)**2+(Yb-Ya)**2);
disp(AB,"distance of AB in m");
clear()
