//ex_39check if y[n]=x[k*n] is time invariant
clear;
clc;
s = 2;//shift 
x=[1 2 3 4 5 6 7 8 9 1 2 3 4 5 6 7 8 9];
T=length(x);
k=3;
for n=1:T/k
    y(n)=x(k*n);
end
T=5;
Ip = x(T-s);
Op = y(T-s);
if(Ip == Op)
  disp(' Time In-variant system');
else
  disp('Time Variant system');
end