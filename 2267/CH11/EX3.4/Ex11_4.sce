//Part B Chapter 3 Example 4
clc;
clear;
close;
format('v',6);
AB=160;//mm
BC=40;//mm
EF=100;//mm
FH=40;//mm
CH=120;//mm
a1=EF*FH;//mm^2
a2=20*CH;//mm^2
a3=AB*BC;//mm^2
y1bar=20+CH+FH;//mm
y2bar=CH/2+BC;//mm
y3bar=BC/2;//mm
//Distance of CG from AB
ybar=(a1*y1bar+a2*y2bar+a3*y3bar)/(a1+a2+a3);//mm
disp(ybar,"From reference axes AB, centroid ybar is(mm) :   ");
