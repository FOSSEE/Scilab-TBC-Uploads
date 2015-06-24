//Exa1.3
clc;
clear;
close;
//given data :
FC=15000;//in Rs
v=35000;//in Rs
s=80000;//in Rs
//Part a : Contribution
Con=s-v;//in Rs
disp(Con,"Contribution in Rs : ");
//Part b : Profit
Prof=Con-FC;//in Rs
disp(Prof,"Profit in Rs : ");
//Part c : BEP
PVratio=Con*100/s;//in %
BEP=FC*100/PVratio;//in Rs
disp(round(BEP),"BEP in Rs : ");
//Part d : M.S.
MS=Prof*100/PVratio;//in Rs
disp(round(MS),"M.S. in Rs : ");