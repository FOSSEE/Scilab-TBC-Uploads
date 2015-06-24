//Example 4.1
clc;
clear;
close;
format('v',9);
//Given data :
p=5;//kg/cm^2
disp("Gauge units : ");
disp(p/10^-4,"Pressure Intensity in kg/m^2 : ");
g=9.81;//gravity constant
disp(p*g/10^-4,"Pressure Intensity in N/m^2 : ");
disp(p*g/10^-4,"Pressure Intensity in Pa : ");
disp(p*g/10^3/10^-4,"Pressure Intensity in kPa : ");
disp(p*g/10^6/10^-4,"Pressure Intensity in MPa : ");
disp("In terms of head : ");
w=1000;//kg/m^3 for water
h=p*10^4/w;//meter of water
disp("Pressure is  : "+string(h)+" meter of water.");
w=13.6*1000;//kg/m^3 for mercury
h=p*10^4/w;//meter of mercury
disp("Pressure is  : "+string(h)+" meter of mercury.");
disp("Absolute units : ");
Patm=760;//mm of mercury
Patm=760*13.6/1000;//m of water
Patm=Patm*1000;//kg/m^2
Pabs=p+Patm;//kg/m^2
disp(Pabs,"Absolute pressure in kg/m^2 : ");
disp(Pabs*10^4,"Absolute pressure in kg/cm^2 : ");
disp(Pabs*10^4*g,"Absolute pressure in N/m^2 : ");
disp(Pabs*10^4*g,"Absolute pressure in Pa : ");
disp(Pabs*10^5/10^3,"Absolute pressure in kPa : ");
disp(Pabs*10^5/10^6,"Absolute pressure in MPa : ");
h1=p*10^4/w;//meter of water
h2=p*10^4/1000;//meter of water
h=h1+h2;////meter of water
disp(h,"Absolute pressure head in terms of water in meter : ");
w=13.6*1000;//kg/m^3 for mercury
h=p*10^4/w+760/1000;//meter of mercury
disp(h,"Absolute pressure head in terms of mercury in meter : ");
