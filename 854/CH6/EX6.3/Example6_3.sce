//clear//
//Caption: Program to calculate the capacitance of a parallel plate capacitor
//Example6.3
//page 151
clc;
S = 10;//area in square inch
S = 10*(0.0254)^2; //area in square metre
d = 0.01; //distance between the plates in inch
d = 0.01*0.0254; //distance between the plates in metre
e0 = 8.854e-12; //free space permittivity in F/m
er = 6; //relative permittivity of mica
e = e0*er;
C =  parallel_capacitor(e,S,d);
disp(C*1e09,'Capacitance of a parallel plate capacitor in pico farads C =')
//Result
//Capacitance of a parallel plate capacitor in pico farads C = 1.3493496  
