
//Exa:2.7
clc;
clear;
close;
//Given:
m1=0.55;//modulation percent 1
m2=0.65;//modulation percent 2
Pc=360;// in watts
mt=sqrt(m1*m1+m2*m2);
printf("\n\n\t total modulation  = %f  ",mt);
Pb=(mt*mt)*Pc/2;
printf("\n\n\t total sideband power radiated  = %f  W",Pb);