//Example 10_6 page no:446
clc;
//given
output_imp=1936;
load_imp=4;
I1=20*10^-3;
//calculating the turn ratio
den=output_imp/load_imp;
den=sqrt(den);
num=1;
function [x] = frac(n, d)
 x = (n*%s)/(d*%s);
endfunction;
x=frac(num,den);
disp(x,"the desired ratio for an ideal transformer to connect the two systems is");
//calculating the rms current
a=1/22;
rms_current=I1/a;
disp(rms_current,"the RMS value of the current in the secondary winding is (in A)");
//calculatin the delivered power
del_pow=(rms_current^2)*load_imp;
disp(del_pow,"the power delivered to the load is (in W)");
