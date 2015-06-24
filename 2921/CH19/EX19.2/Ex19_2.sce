clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-19.2 Page No.421\n');

//Life in hours of operation
t=0.01;
K=12*10^-10;
P=30.5;
V=98;
T=t/(K*P*V);

mprintf('\n Life = %f hours.',T);

//Note-There is an error in the answer given in textbook
