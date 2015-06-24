//to calculate no of conductors on each pole piece

clc;
Z=256;
A=6;
P=6;
r=.71;        //ratio of pole arc to pole pitch
N_cw=(Z/(2*A*P))*r;   
N_cc=ceil(2*N_cw);
disp(N_cc,'compensating conductors/pole');