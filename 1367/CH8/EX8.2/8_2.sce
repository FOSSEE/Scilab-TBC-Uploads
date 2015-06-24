//FIND BRINELL HARDNESS NUMBER 
//Ex:8.2
clc;
clear;
close;
d=5;//in mm
id=32.5/10;//indentation diameter in mm
p=30*d^2;//load for steel specimen in kgf
disp(p,"Load P for steel specimen (in kgf) = ");
bhn=p/((3.14*d/2)*(d-sqrt(d^2-id^2)));//in kgf/sqmm
disp(bhn,"BRINELL HARDNESS NUMBER of the steel specimen = ");