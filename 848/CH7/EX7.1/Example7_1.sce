//clear//
//Caption: To find optimum decision threshold
//Example7.1
//Page 258
clear;
clc;
close;
bon = 1;
boff =0;
sigma_on = 1;
sigma_off = 1;
Q = (bon-boff)/(sigma_on+sigma_off)
Vth = bon-Q*sigma_on
disp(Q,'Q parameter value =')
disp(Vth,'optimum decision threshold Vth =') 
//Result
//Q parameter value = 0.5  
//optimum decision threshold Vth = 0.5  
