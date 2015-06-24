//Exa 8.1
clc;
clear;
close;
//given data
R=500;//in Mohm/Km
R=R*10^6;//in ohm
r1=2.5/2;//in cm
r1=r1*10^-2;//in meter
rho=4.5*10^16;//in ohm/cm
rho=rho*10^-2;//in ohm/m
l=1;//in Km
l=l*1000;//in meter
//Formula : R=(rho/(2*%pi*l))*log(r2/r1)
r2=(exp(R/(rho/(2*%pi*l))))*r1;//in meter
thickness=r2-r1;//in meter
thickness=thickness*100;//in cm
disp(thickness,"Thickness of Insulation in cm :");