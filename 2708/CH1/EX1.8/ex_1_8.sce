//Example 1.8 // angle of vertex of biprism 
clc;
clear;
//given data :
u=1.5;//referactive index of bi-prism
b=.2D-3;//fringes width in m
al=%pi/180;//angle in radian
w=5D-7;// wavelength in m
a=0.25;// distance between source & prism in m
c=1.75;// distance between prism & screen in m
D=a+c;//distance between source and screen in m
d=D*w/b;//distance between slits in m
a1=d/(2*a*(u-1));// angle in radian
al=a1*180/%pi;// angle in degree
vert=180-2*al;// vertex angle
disp(vert,"angle of vertex of biprism in degree")
