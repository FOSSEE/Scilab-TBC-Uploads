//Ex_2_1
clc;
clear;
close;
format('v',6);
//given data : 
LTsc=1.6;//H(Series cumulative)
LTd=0.4;//H(differentially)
L1=0.6;//H
M=(LTsc-LTd)/4;//H(Mutual Inductance)
L2=LTsc-2*M-L1;//H
K=M/sqrt(L1*L2);//Coupling Coefficient
disp(M,"Mutual Inductance(H)");
disp(K,"Coupling Coefficient");
