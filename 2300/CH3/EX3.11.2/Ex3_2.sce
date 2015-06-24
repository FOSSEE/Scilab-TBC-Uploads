
//scilab 5.4.1
//WINDOWS 7 Operating Systems
//chapter 3 PROPERTIES OF SEMICONDUCTORS

//example 2
clc
//Given data
Sn=480;     //Conductivity in S/m
yn=0.38;    //Electron mobility in m^2/(V*s)
e=1.6*10^-19;   //Charge of electron in C

//Required Formula
Nd=Sn/(e*yn);   //Concentration of donor atoms per m^3
 disp('m^-3',Nd,'Concentration of donor atoms');
 //End
