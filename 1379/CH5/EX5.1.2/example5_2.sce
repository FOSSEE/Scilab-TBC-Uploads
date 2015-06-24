

//exapple 5.2 
clc; funcprot(0);
// Initialization of Variable
Q=0.885;
pi=3.1428;
s=1/960;
s=round(s*1000000)/1000000;
b=1.36;
n=0.014;
theta=55*pi/180;
//calculation
function[y]=flow(x);
    a=(x*(b+x/tan(theta)))/(b+2*x/sin(theta));
    y=a^(2/3)*s^(1/2)*(x*(b+x/tan(theta)))/n-Q;
endfunction
x=fsolve(0.1,flow);
disp(x,"depth of water in (m):")
