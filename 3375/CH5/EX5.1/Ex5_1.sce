//Example 5.1
//Skin Friction Drag
//Page No. 288 
clc;clear;close;

u=3;            //in m/s
L=1;            //in m
b=2;            //in m
rho=1.23;        //in kg/m^3
mu=1.46*10^-5;       //in m^2/s
Re=(u*L)/mu;
Cf=1.328/Re^(1/2);
F=Cf*rho*u*u*L*b/2;
d1=L*5/(Re)^(1/2);
d2=L*1.7208/(Re)^(1/2);
d3=L*0.664/(Re)^(1/2);
d1=d1*1000;       //conversion to mm
d2=d2*1000;       //conversion to mm
d3=d3*1000;       //conversion to mm
printf('\nDrag on the plate = %f N\nBoundary Layer Thickness = %f mm\nDisplacement Thickness = %f mm\nMomentum Thickness = %f mm\n\n\n\n',F,d1,d2,d3);
