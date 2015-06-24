//Exa 9.3
clc;
clear;
close;
//Given data :
RBB=10;//in Kohm
ETA=0.6;//intrinsic stand off ratio
RB1=ETA*RBB;//in Kohm
RB2=RBB-RB1;//in Kohm
disp(RB1,"Resistance RB1 in Kohm :");
disp(RB2,"Resistance RB2 in Kohm :");