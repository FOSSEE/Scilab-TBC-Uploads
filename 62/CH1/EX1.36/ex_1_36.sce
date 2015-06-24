// ex_36 check if y[n] = x[n-1] memoryless ,causal, linear, time variant
clear;
clc;
s = 2;//shift 
T = 20; //lenght of signal
x(1)=1;
for n = 2:T
  x(n) = n;
  y(n) = x(n-1);
end
if y(2)==x(2) then
    disp("memoryless")
else
    disp("not memoryless")
end
//causal if it does'nt depend on future
if y(2)==x(2) | y(2)==x(1) then
    disp('causal')
else
    disp('non casual')
end
x1=x;
y1=y;
x2(1)=2;
for n = 2:T
  x2(n) = 2;
  y2(n) = x2(n-1);
end
z=y1+y2;
for n = 2:T
  y3(n) = (x2(n-1)+x1(n-1));
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
Max =20;
dd=1;
for n=2:T
    if y(n)>Max then
        dd=0
    end
end
if dd==0
  disp('unstable')
 else
  disp('stable');
end