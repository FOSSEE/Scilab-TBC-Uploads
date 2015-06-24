//Example 7.4
clc;
clear;
close;
format('v',7);
//Given data :
D=30/100;//meter
L=100;//meter
v=0.01*10^-4;//m^2/s
a=3;//m/s
g=9.81;//gravity constanty
Rn=a*D/v;//Reynolds no.
f=0.079/Rn^(1/4);//using blasius formula 
hf=4*f*L/D*a^2/2/g;//meter
disp(hf,"Head lost in meter : ");
//Answer in the book is wrong.
