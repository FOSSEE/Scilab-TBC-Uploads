clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-17.2 Page No.383\n');

//Combined stress using the maximum shear stress theorem

Ss=2170;
S=8780;
Sr=sqrt(Ss^2+(S/2)^2);

mprintf('\n Combined stress = %f lb/in^2.',Sr);
