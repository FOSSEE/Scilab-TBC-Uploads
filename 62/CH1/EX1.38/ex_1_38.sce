// ex_38 check if y[n] = n.x[n] is memoryless, causal, linear, time-varaint
clear;
clc;
s = 2;//shift 
T = 20; //lenght of signal
for n = 1:T
  x(n) = n;
  y(n) = n*x(n);
end
if y(1)==x(1) then
    disp("memoryless and causal")
else
    disp("noncausal")
end
x1=x;
y1=y;
for n = 1:T
  x2(n) = 2;
  y2(n) = n*x2(n);
end
z=y1+y2;
for n = 1:T
  y3(n) = n*(x2(n)+x1(n));
end
if z==y3 then
    disp('linear')
else
    disp("nonlinear")
end
Ip = x(T-s);
Op = y(T-s);
if(Ip == Op)
  disp(' Time In-variant system');
else
  disp('Time Variant system');
end
Max = 50;
S = 0;
for n=1:T          
  S = S+y(n);
end 
if (S >Max)
  disp('unstable')
 else
  disp('stable');
end