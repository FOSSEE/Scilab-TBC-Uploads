//Example No. 6.2.2
clc;
clear;
close;
format('v',5);
n=2;//(No. of point source)
//E=E0*{exp(%i*(%pi/4+si/2))-exp(-%i*(%pi/4+si/2))} as exp(%i*theta)+exp(-%i*theta)=2*cos(theta)
//E=2*E0*cos(%pi/4+si/2);
//si=Beta*d*cosd(fi)=2*%pi*cosd(fi)
//En=cos(%pi/4+Beta*d*cosd(%pi/4)); But 2*E0=1
fi=[0 30 60 90 120 150 180 210 240 270 300 330];//degree(angle)
En=cos(%pi/4+%pi/4*cosd(fi));//Normalized field
disp("Different values of fi : ");
disp(string(fi));
disp("Corresponding normalized field is : ");
disp(string(abs(En)));
