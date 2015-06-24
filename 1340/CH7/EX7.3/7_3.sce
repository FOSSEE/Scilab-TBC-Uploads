clc;
s = %s;
G = syslin('c',100*((s+2)*(s+6))/(s*(s+3)*(s+4)));disp(G,"G(s)=");
syms t s;
R = laplace(5,t,s);
E = R/(1+G);
sse = limit(s*E,s,0);disp(sse,"Steady state error for step input:");
R = laplace(5*t,t,s);
E = R/(1+G);
sse = limit(s*E,s,0);disp(sse,"Steady state error for ramp input:");
R = laplace(5*t^2,t,s);
E = R/(1+G);
sse = limit(s*E,s,0);disp(sse,"Steady state error for parabola input:");
printf("for TYPE-1 systems steady state error for  parabola inputs is Infinity")
