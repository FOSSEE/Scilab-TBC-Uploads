// To calculate no load current and its pf and no load power drawn from mains

clc;
E=200;
f=50;
N1=150;        // no of turns
b1=.1;
b2=.05;
phi_max=E/(4.44*f*N1);
disp(phi_max,'flux(Wb)');
B_max=phi_max/(b1*b2);
disp(B_max,'B_max(T)');

H_max=250;        //According to B_max, H_max is 250AT/m
l_c=.2*(3.0+3.5);    //length of core
AT_max=H_max*l_c;
disp(AT_max,'AT_max');
T_max=N1;
I_mmax=AT_max/T_max;
I_mrms=I_mmax/2^.5;
disp(I_mrms,'I_mrms(A)');

v=2*(20*10*5)+2*(45*10*5);

d=.0079;            //density of core material
w=v*d;

cl=3;                //core loss/kg
closs=w*cl;
disp(closs,'core loss(W)');
I_i=closs/E;
disp(I_i,'I_i(A)');
function [r,pff]=rect2polar(x,y)
    r=sqrt(x^2+y^2);
    pff=cosd(atand(y/x));
endfunction
[I_o,pf]=rect2polar(I_i,-I_mmax);
disp(I_o,'no load current(A)');
disp(pf,'no load power factor');