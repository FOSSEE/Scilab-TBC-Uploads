
//scilab 5.4.1
//WINDOWS 7 Operating System 
//chapter 3 PROPERTIES OF SEMICONDUCTORS
//example 1

clc
//Given data
T=300;  //K
ni=1.5*10^16;    //Intrinsic carrier concentartion per m^3
yn=0.13;    //Electron mobility in m^2/(V*s)
yp=0.05;   //Hole mobility in m^2/(V*s)
e=1.6*10^-19;   //Charge of electron in C

//Required Formula
Gi=e*ni*(yn+yp);    //Intrinsic conductivity

Ri=1/Gi;    //Intrinsic resistivity

disp('S/m',Gi,'Intrinsic conductivity=');

disp('ohm*meter',Ri,'Intrinsic resistivity=');
//End
