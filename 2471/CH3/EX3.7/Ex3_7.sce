clear ;
clc;
// Example 3.7
printf('Example 3.7\n\n');
printf('Page No. 68\n\n');

// given
Pc = 10000;// Capital cost for project C in Pound
Pd = 10000;// Capital cost for project d in Pound
nc = 3;// pay back period for C
nd = 3;// pay back period for D
Ca = [4500 3500 2000 2000 1000];// Annual Cash flow for C in Pound
Cc = [4500 8000 10000 12000 13000]// Cumulative Cash flow for C in Pound
Da = [1500 4000 4500 2200 1800 1000];// Annual Cash flow for D in Pound
Dc = [1500 5500 10000 12200 14000 15000]// Cumulative Cash flow for D in Pound
Ac = Cc(5)-Pc;// in Pound
Ad = Dc(6)-Pd;// in Pound
printf('Additional amount from C after the pay back time is %3.f Pound\n',Ac)
printf('Additional amount from D after the pay back time is %3.f Pound\n',Ad)
