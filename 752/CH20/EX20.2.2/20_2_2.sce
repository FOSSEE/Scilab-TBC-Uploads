clc;
//page no 761
//prob no. 20.2.2
//refer example 20.2.1
d=50*10^-6;wav=0.8*10^-6;NA=0.352;
//Determination of V number
V=(%pi)*d*NA/wav
disp(V,'the V no. is');
//Determination of approximate number of modes
N=(V^2)/2;
disp(N,'the approximate no. of modes are ');
