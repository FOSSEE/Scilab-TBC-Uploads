clc;
t = 0:0.05:3;
s = %s;
T1 = 24.542/(s^2+4*s+24.542);
T2 = 245.42/((s+10)*(s^2+4*s+24.542));
T3 = 73.626/((s+3)*(s^2+4*s+24.542));
f1 = syslin('c',T1);
f2 = syslin('c',T2);
f3 = syslin('c',T3);
c1 = csim('step',t,f1);
c2 = csim('step',t,f2);
c3 = csim('step',t,f3);plot(t,c1,t,c2,t,c3);
legend("c1","c2","c3");
printf("c2 is a better approximation of c1 as the pole =-10 is far from dominant poles");


