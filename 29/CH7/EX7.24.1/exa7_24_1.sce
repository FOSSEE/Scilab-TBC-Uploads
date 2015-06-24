//caption:root_locus_description
//example 7.24.1
//page 295
clc;
s=%s;
syms K
G=K/(s*(s+4));
disp("the characterstics eq. is determined as:")
CH=(s*(s+4))+K
CH=sym('(s*(s+4))+K');
disp('=0',CH,"characterstics_eq,CH=")
eq=(s*(s+4))
p=roots(eq)
disp(p,"open loop poles are:")
K=sym('-(s*(s+4))')
d=diff(K,s)
e=2*s+4
P=2;
Z=0;
disp("since -2 lies on root locus so breakaway point is -2")
for(k=0:1)
  A=((2*k+1)*180)/(P-Z);
  disp(A,"asymptote are at angle:")
end
x=((0-4)-0)/(P-Z)  // (sum_of_P - sum_of_Z)/(P-Z)
disp(x,"asymptotes intersect at ")
disp("since |G(s)*H(s)|=1")
disp("which gives K=8")
k=8
g=k/(s*(s+4))
G=syslin('c',g)
evans(g,200)
xgrid(2)