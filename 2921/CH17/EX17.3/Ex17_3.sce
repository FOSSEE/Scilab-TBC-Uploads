clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-17.3 Page No.383\n');

//Combined stress using the maximum normal stress theory
Ss=2170;
S=8780;
Sr=S/2+sqrt(Ss^2+(S/2)^2);

mprintf('\n Combined stress = %f lb/in^2.',Sr);

//Note-There is an error in the answer given in textbook
