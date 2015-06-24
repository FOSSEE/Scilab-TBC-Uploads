// Exa 4.5
clc;
clear;
close;
// Given data
SR= 2;// in V/micro sec
del_v_in= 0.5;// in volt
del_t=10;//in micro sec
del_v_inBYdel_t= del_v_in/del_t;// in V/micro sec
// v_out= A_CL*v_in
A_CL= SR/del_v_inBYdel_t;
disp(A_CL,"Closed-loop gain ")
disp(A_CL,"Any closed loop voltage gain of magnitude exceeding 40 would drive the output at a rate greater than the SR allows, so the maximum closed loop gain is")
