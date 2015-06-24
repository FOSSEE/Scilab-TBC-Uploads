////Example 7.7
clc;
clear;
close;
format('v',6);
//Given data :
D=80/1000;//meter
Q=600*10^-3/60;//m^3/sec
L=1*10^3;//meter
f=0.02;//coefficient of friction
v=Q/(%pi/4*D^2);//m/s
g=9.81;//gravity constanty
hf=4*f*L*v^2/D/2/g;//meter
disp(hf,"Head lost due to friction in meter : ");
//Answer is wrong in the book.
