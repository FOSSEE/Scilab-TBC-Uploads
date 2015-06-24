clc;
s = %s;
printf("S.S. error = 0.1");
Kv = 1/0.1
G = syslin('c',(s+5)/((s*(s+6)*(s+7)*(s+8))));
printf("\n For type-1 system and finite steady state error implies a ramp input. \n")
syms k s;
disp(s*G);
l = limit(s*G,s,0);
disp(l);
k = Kv/l;
disp(k,"Value of K:");
