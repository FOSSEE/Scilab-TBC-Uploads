//Example 15.5
//Friction and Lubrication
//Page No. 546
clc;clear;close;

Do=60;               //in mm
Di=30;               //in mm
def1=70;               //in mm
def2=81.4;               //in mm
h=10;               //in mm
a=30;               //in mm
di=sqrt((Do^2-Di^2)*2-def1^2);
pr=(Di-di)/Di*100;
m=0.27;              //no unit
p_s=1+2*m*a/(sqrt(3)*h);
printf('\nFor OD after deformation being 70 mm, Di = %g mm\nPrecent change in inside diameter = %g percent\nPeak pressure = %g',di,pr,p_s);
di=sqrt(def2^2-(Do^2-Di^2)*2);
pr=(Di-di)/Di*100;
m=0.05;              //no unit
p_s=1+2*m*a/(sqrt(3)*h);
printf('\n\n\n\nFor OD after deformation being 81.4 mm, Di = %g mm\nPrecent change in inside diameter = %g percent\nPeak pressure = %g',di,pr,p_s);
