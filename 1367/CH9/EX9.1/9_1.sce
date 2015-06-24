//Find grain diameter
//Exa:9.1
clc;
clear;
close ;
n=2^(12-1);//astm no.=12
//1 sq inch=645mm^2
d=1/sqrt((n/645)*10^4);//grain diameter in mm
disp(d,"grain diameter for ASTM no. 12 (in mm) = ");