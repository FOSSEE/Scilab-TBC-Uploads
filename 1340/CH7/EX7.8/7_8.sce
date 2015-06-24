clc;
s = %s;
G = syslin('c',100/(s*(s+10)));
H = syslin('c',1/(s+5));
Ge = G/(1+G*H-G);
disp(Ge);
disp("It is a Type-0 system,does not contain integration term");
syms s;
Kp = limit(s*Ge/s,s,0);
disp(Kp,"Kp :");
sse = 1/(1+Kp);disp(sse,"S.S.error:")
printf("\n negative value of Steady state error implies the output step is larger than the input step")