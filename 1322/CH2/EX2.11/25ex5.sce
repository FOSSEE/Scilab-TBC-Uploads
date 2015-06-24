
//x/12a^2b - y/18ab^2
clear;
clc;
close;
 d=int32([18,12]);//L.C.M of denominators
k=lcm(d);
//"L.C.M of a^2*b and a*b^2 is a^2*b^2"
x_coeff=36/12;
y_coeff=36/18;
disp('ans=')
mprintf("(%ibx-%iay)/%ia^2b^2",x_coeff,y_coeff,k)
