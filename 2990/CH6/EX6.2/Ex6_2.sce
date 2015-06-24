
clc; funcprot(0);
// Initialization of Variable
f=0.152;//focal length in m
H=1800;//elevation of topmost point in m
h=300;//elevation of ground in m
//calculation
S=f/(H-h);
disp(round(1/S),"scale of photograph in 1 in")
clear()
