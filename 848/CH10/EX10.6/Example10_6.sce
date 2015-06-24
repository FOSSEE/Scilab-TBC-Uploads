//clear//
//Caption:Program to find waveguide length
//Example10.6
//page 353
clear;
clc;
close;
k = 0.6/1e-03; //coupling coefficient per milli meter
m =1; //mode=1
L = %pi*(m+1)/(2*k);
disp(L*1e03,'Coupling Length in mm L =')
//Result
//Coupling Length in mm L =  5.2359878
