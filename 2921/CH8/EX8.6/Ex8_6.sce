clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-8.6 Page No.167\n');

F=322;             //[lb] Force
Delta=4;           //[in] Deflection

U=F*Delta/2;       //[in*lb] Energy

mprintf('\n The energy from the 4-inch deflection was %f lb*in.',U);
