
//L=W(T-t)/w - t
clear;
clc;
close;
W=380;T=28.5;t=8.5;w=115;//given
L=string('(W*(T-t)/w)-t');
disp("substituting given values")
L=evstr(L)
