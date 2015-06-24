clc;
close();
clear();
//page no 476
//prob no. 14.6
L=320*10^-9;   //H/m
C=90*10^-12;   //F/m
v=1/sqrt(L*C);   //from Ex14.5
Er=(3*10^8/v)^2;
mprintf('The dielectic constant is, Er = %.2f  \n',Er);
