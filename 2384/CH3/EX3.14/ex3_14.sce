// Exa 3.14
clc;
clear;
close;
format('v',6)
// Given data
Im= 100;// in A
Irms= sqrt(Im^2/2*integrate('1-cos(2*theta)','theta',0,%pi)/%pi);// in A
disp(Irms,"The R.M.S value of current in A is : ")
Iav= Im*integrate('sin(theta)','theta',0,%pi)/%pi;// in A
disp(Iav,"The average value of current in A is : ")
// The form factor 
kf= Irms/Iav;
disp(kf,"The form factor is : ")
