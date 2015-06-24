//Exa1.2
clc;
clear;
close;
//given data :
FC=25000;//in Rs
v=45000;//in Rs
s=120000;//in Rs
//Part a : Contribution
Con=s-v;//in Rs
disp(Con,"Contribution in Rs : ");
//Part b : Profit
Prof=Con-FC;//in Rs
disp(Prof,"Profit in Rs : ");
//Part c : BEP
PVratio=Con*100/s;//in %
BEP=FC*100/PVratio;//in Rs
disp(BEP,"BEP in Rs : ");
//Part d : M.S.
MS=Prof*100/PVratio;//in Rs
disp(MS,"M.S. in Rs : ");