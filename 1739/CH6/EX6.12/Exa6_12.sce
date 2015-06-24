//Exa 6.12
clc;
clear;
close;
//given data :
format('v',5);
ETAext=1.5;//in %
I=25;//in mA
V=4;//in Volt
F=0.8;//Transmission factor at crystal-air interface
nm=3.6;//refractive index of GaAs;unitless
n=1;//refractive index of air ;unitless
disp("ETAext=Pint*100*F*n^2/(4*P*nm^2)");
//P=V*I
Pint=(ETAext*4*V*I*10^-3*nm^2)/(F*100);//in watts
disp(Pint*1000,"Optical power generated in the device in mWatts : ");