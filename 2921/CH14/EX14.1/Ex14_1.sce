clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-14.1 Page No.306\n');

//Torque on small pulley
hp=2;
n=2450;
T=63000*hp/n;

mprintf('\n Torque on small pulley = %f in-lb.',T);
r=6/2;
Fd=T/r;

//Front force
Fb=10;
Ff=Fd+Fb;

mprintf('\n Front force = %f lb.',Ff);

//Force pulling the shafts
Ft=Ff+Fb

mprintf('\n Force pulling the shafts = %f lb.',Ft);

//Surface speed
D=2*r;
Vm=%pi*D*n/12;

mprintf('\n Surface speed = %f ft/min.',Vm);

//Ratio
D2=10;
Mw=D2/D;

mprintf('\n Ratio = %f .',Mw);

//Output speed
no=n/Mw;

mprintf('\n Output speed = %f rpm.',no);

//Note-There is an error in the answer given in textbook
