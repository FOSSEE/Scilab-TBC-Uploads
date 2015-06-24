clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-8.4 Page No.165\n');

F=35;              //[lb] Load
k=73.3;            //[lb/in] Spring rate

x=F/k;             //[in] Deflection 

mprintf('\n The deflection in the spring would be %f in.',x);
