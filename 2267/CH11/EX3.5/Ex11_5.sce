//Part B Chapter 3 Example 5
clc;
clear;
close;
format('v',6);
EF=150;//mm
GH=150;//mm
CD=150;//mm
AB=250;//mm
AE=10;//mm
DH=10;//mm
CH=120;//mm
CD_t=10;//mm(thickness of CD section)
a1=AB*AE;//mm^2
a2=180*AE;//mm^2
a4=180*AE;//mm^2
a3=450*10;//mm^2
a5=CD*AE;//mm^2
y1bar=5;y2bar=15;y3bar=225+20;y4bar=475;y5bar=485;//mm
//Distance of CG from AB
ybar=(a1*y1bar+a2*y2bar+a3*y3bar+a4*y4bar+a5*y5bar)/(a1+a2+a3+a4+a5);//mm
disp(ybar,"From reference axes AB, centroid ybar is(mm) : ");
