clc;
s = %s;
G2 = syslin('c',1/(s*(s+25)));
syms s;
limG1= limit(1000*s/s,s,0);//limit of G1
limG2 = limit(s/(s*G2),s,0);//limit of G2
ess = -1/(limG1+limG2);
disp(ess,"S.S. error due to step disturbance:");
printf("Steady state error is inversely proportional to d.c.gain of G1(s)=1000");