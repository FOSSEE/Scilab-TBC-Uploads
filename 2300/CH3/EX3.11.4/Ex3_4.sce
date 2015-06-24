
//scilab 5.4.1
//OS-WINDOWS 7
//chapter 3 PROPERTIES OF SEMICONDUCTORS
//example 4

clc
//Given data
T=300;  //K
ni=1.5*10^16;    //Intrinsic carrier concentartion per m^3
yn=0.13;    //Electron mobility in m^2/(V*s)
yp=0.05;   //Hole mobility in m^2/(V*s)
e=1.6*10^-19;   //Charge of electron in C
l=0.01;    //length in m
a=10^-6;    //cross sectional area in m^2

//Required Formula
Gi=e*ni*(yn+yp);    //Intrinsic conductivity

Ri=l/(Gi*a);    //Required resistance

disp('S/m',Gi,'Intrinsic conductivity=');

disp('ohm',Ri,'required resistance');
//End
