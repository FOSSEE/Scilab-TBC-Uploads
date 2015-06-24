////Example 7.6
clc;
clear;
close;
format('v',6);
//Given data :
D=20/100;//meter
v=3;//m/s
v1=0.01*10^-3;//m^2/sec
Re=D*v/v1;//Reynolds number
f=0.002+0.09/Re^0.3;//coeff. of friction
L=5;//meter
g=9.81;//gravity constanty
hf=4*f*L*v^2/D/2/g;//meter
disp(hf,"Head lost due to friction in meter : ");
