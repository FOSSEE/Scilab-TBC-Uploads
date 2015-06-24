//Example 4.5 //AVERAGE INTENSITY
clc;
clear;
close;
format('v',6)
cpl=100;//
h=5;//in meter
th=60;//in degree
F=1000;//intensity in lumens
MSCP=F/(4*%pi);// MSCP of the lamps
ai=((cpl/h^2)*cosd(90-th));//average intensity of illumination
disp(round(MSCP),"MSCP of a lamp is,=")
disp(ai,"average intensity of illumination is lux ")
