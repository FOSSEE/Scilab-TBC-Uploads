
//2a/15 + 5b/12
clear;
clc;
close;
d=int32([15,12]);//"L.C.M of denominators"
k=lcm(d);
a_coeff=60/15*2;
b_coeff=60/12*5;
disp('ans=')
mprintf("(%ia+%ib)/%i",a_coeff,b_coeff,k)

