//Example 4.1
clc
s=%s;
num=poly(1,'s','coeff');
den=s*poly([1 3 3 1],'s','coeff');
xs=num/den;
disp(xs,'xs=')
syms s;
xt=limit(s*xs,s,0);//final value theorem
disp(xt,'x(t)=')