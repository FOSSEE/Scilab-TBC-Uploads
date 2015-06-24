//Exa 1.14
clc;
clear;
close;
format('v',7);

//Given Data :
R0=2.8;//ohm
t0=0;//degree C
R1=3.8;//ohm
t1=100;//degree C
R2=5.8;//ohm\
//R=R0*(1+alfa*t)
alfa=(R1/R0-1)/t1;
t2=(R2/R0-1)/alfa;//degree C
disp(t2,"Temperature at R2 in degree C : ");
