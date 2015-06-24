clc
//initialization of variables
w=0.1 //lbm
Pv=30000 //ft-lb/lbm
v1=14 //ft^3 /lbm
v2=3 //ft^3/lbm
//calculations
function [W]=func(v)
    W=Pv/v
endfunction
Work=w*intg(v1,v2,func)
//results
//Answer varies a bit from the text due to rounding off of log value
printf("Work done = %d ft-lb",Work)
