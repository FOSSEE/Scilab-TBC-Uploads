//Example 1.6 // fringe width
clc;
//given data :
a=0.10;// distance between source & prism in m
c=1;// distance between prism & screen in m
u=1.5;//referactive index of bi-prism
al=%pi/180;//angle in radian
d=2*a*(u-1)*al;// distance between slits in m
w=5900D-10;// wavelength in m
D=a+c;//distance between source and screen in m
b=D*w/d;//fringes width
disp(b,"width of fringes in meter")
