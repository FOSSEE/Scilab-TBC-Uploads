//Part B Chapter 3 Example 3
clc;
clear;
close;
format('v',7);
AB=200;//mm
BC=300;//mm
CD=260;//mm
a1=1/2*AB*CD;//mm^2(Area of ABE)
a2=%pi*(BC/2)^2/2;//mm^2(Area of semicircle)
a3=BC*CD;//mm^2(Area of BECD)
x1bar=1/3*CD;//mm
y1bar=BC+1/3*AB;//mm
x2bar=4/3*(BC/2)/%pi;//mm
y2bar=BC/2;//mm
x3bar=1/2*CD;//mm
y3bar=BC/2;//mm
//Distance of CG from AC
xbar=(a1*x1bar-a2*x2bar+a3*x3bar)/(a1-a2+a3);//mm
//Distance of CG from CD
ybar=(a1*y1bar-a2*y2bar+a3*y3bar)/(a1-a2+a3);//mm
disp(ybar,"From reference axes CD, centroid ybar is(mm) :   ");
disp(xbar,"From reference axes AC, centroid xbar is(mm) :   ");
