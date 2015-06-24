// Example 8.3;//power coupled
clc;
clear;
close;
n1=1.48;//core refractive index
n2=1.46;//cladiing refractive index
Po=150;//output power in micro watt
NA=sqrt(n1^2-n2^2);//numerical aperture
Pin=Po*NA^2;
disp(Pin,"Power couled in micro watt")
