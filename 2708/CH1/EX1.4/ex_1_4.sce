//Example 1.4 // position of fringe
clc;
clear;
//given data :
d=2D-3;// distance between slits in m
w=5890D-10;// wavelength in m
D=0.04;//distance between source and screen in m
n=10;// number of fringe which is to locate
x=n*D*w/d;//position of fringe 
disp(x,"position of nth fringes in meter")
