clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-11.4 Page No.236\n');

//Torque in input shaft
hp=1.5;
n=3450;
T=63000*hp/n;

mprintf('\n Torque in input shaft is %f lb*in.',T);

//Note-In the book T=27.4 in-lb is used instead of T=27.391304

//Output torque
Ng=24;
Np=10;
Tout=(Ng/Np)*T;

mprintf('\n Output torque is %f lb*in.',Tout);

//Output speed
nout=(Np/Ng)*n;

mprintf('\n Output speed is %f rpm.',nout);

