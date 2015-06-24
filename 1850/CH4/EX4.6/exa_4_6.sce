// Exa 4.6
clc;
clear;
close;
// Given data
V_PP= 3;// in volt
del_t= 4;// in micro sec
// del_V= 90% of V_PP - 10% of V_PP = 0.8*V_PP
del_V= 0.8*V_PP;
SR_required= del_V/del_t;// in V/micro sec
disp("The required op-amp must have an SR equal or more than "+string(SR_required)+"  V/micro sec");

// (i)
disp("The 741 op-amp has an SR of 0.5 V/micro sec. It is too slow and cannot be used");

// (ii)
SR= 50;// in V/micro sec
SR= SR*10^6;// in V/sec
del_t= del_V/SR;// in sec
del_t= del_t*10^9;// in ns
disp(del_t,"The 318 op-amp has an SR of 50 V/micro sec. It is fast enough and can be used. The rese time using a 318 op-amp will be (in ns)")
