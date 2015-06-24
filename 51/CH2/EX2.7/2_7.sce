clc;
clear;
sw=64;//lb/ft^3; specific weight of water
h=10;//ft
a=3;//ft
b=3;//ft

//shape is triangular, hence hc=h-(a/3)
hc=h-(a/3);
A=(0.5*a*b);//ft^3; area of the right angled triangle
fres=sw*hc*A;//lb
Ixc=b*(a^3)/36;
Ixyc=b*(a^2)*(b)/72;
//according to the coordinate system taken yc=hc and xc=0
yres=(Ixc/(hc*A))+hc;
xres=(Ixyc/(hc*A));
ydist=yres-hc;
disp("lb",fres,"The resultant force on the area shown is=")
disp("ft",yres,"yR=")
disp("ft",xres,"xR=")
disp("ft below the centroid of the area.",ydist,"ft to the right of and ",xres,"The centre of pressure is")
