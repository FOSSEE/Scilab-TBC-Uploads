////Example 7.5
clc;
clear;
close;
format('v',6);
//Given data :
D=30/100;//meter
L=500;//meter
Q=300*10^-3;//m^2/sec
f=0.0008;//coeff. of friction
v=Q/(%pi/4*D^2);//m/s
g=9.81;//gravity constanty
hf=4*f*L*v^2/D/2/g;//meter
disp(hf,"Difference in elevation in meter : ");
//Answer in the book is wrong.
