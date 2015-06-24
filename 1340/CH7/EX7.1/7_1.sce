clc;
s = %s;
T = syslin('c',5/(s^2+7*s+10));disp(T,"T(s)=");
R = syslin('c',1/s);disp(R,"R(s)= unit step:");
E = R*(1-T);
syms t s;
sse = limit(s*E,s,0);
disp(sse,"Steady state error :")