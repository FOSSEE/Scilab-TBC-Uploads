//Example No. 6.2.1
clc;
clear;
close;
format('v',5);
n=2;//(No. of point source)
//E=E0*{exp(%i*%pi/2)-exp(-%i*si/2)} where exp(-%i*si)=-1
//si=Beta*d*cosd(fi)=2*%pi*cosd(fi)
//E=2*%i*E0*sind(%pi*cosd(fi)); But 2*%i*E0=1
fi=[0 30 60 90 120 150 180 210 240 270 300 330];//degree(angle)
En=sin(%pi*cosd(fi));//Normalized field
disp("Different values of fi : ");
disp(string(fi));
disp("Corresponding normalized field is : ");
disp(string(abs(En)));
