
//example 4.9
//page 177
clc; funcprot(0);
//initialisation of variable
za=500;
z1=480;
v1=4.08;
g=9.81;
d=0.25;
l1=100;//length
//part1
k=za-z1-v1^2/2/g-0.02*l1/d*v1^2/2/g;//k=pa/gamma
HGLa=z1+k;
disp(HGLa,"pressure head at A (m)=");
//part2
zb=550;
v2=0;
l2=500;
hs=zb-za+0.02*l2/d*v1^2/2/g;
HGLb=HGLa+hs;
disp(HGLb,"pressure head at B (m)=");
clear
