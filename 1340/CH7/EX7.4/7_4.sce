clc;
s = %s;
G1 = syslin('c',500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)));
G2 = syslin('c',500*(s+2)*(s+5)*(s+6)/(s*(s+8)*(s+10)*(s+12)));
G3 = syslin('c',500*(s+2)*(s+4)*(s+5)*(s+6)*(s+7)/(s^2*(s+8)*(s+10)*(s+12)));
printf("G1,G2,G3 have poles in the LHP and on origin,hence all are stable");
syms t s;
R11 = laplace(1,t,s);
E1=R11/(1+G1);
es1= limit(s*E1,s,0);
R12 = laplace(t,t,s);
E2=R12/(1+G1);
er1 = limit(s*E2,s,0);
R13 = laplace(t^2,t,s);
E3 = R13/(1+G3);
ep1 = limit(s^2*E3,s,0);

R21 = laplace(1,t,s);
E1=R21/(1+G2);
es2= limit(s*E1,s,0);
R22= laplace(t,t,s);
E2=R22/(1+G2);
er2=limit(s*E2,s,0);
R23 = laplace(t^2,t,s);
E3 = R23/(1+G2);
er2 = limit(s^2*E3,s,0);



disp(ep1,"err parabolic",er1,"err ramp",es1,"err step","for G =500(s+2)(s+5)/((s+8)(s+10)(s+12)) ");
disp(ep2,"err parabolic",er2,"err ramp",es2,"err step","for G =500(s+2)(s+5)(s+6)/(s(s+8)(s+10)(s+12)) ");
disp(ep3,"err parabolic",er3,"err ramp",es3,"err step","for G =500(s+2)(s+4)(s+5)(s+6)(s+7)/(s^2(s+8)(s+10)(s+12)) ");



    

    
