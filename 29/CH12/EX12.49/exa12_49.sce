//caption:root_locus_and_value_of_K
//example 12.49
//page 576
s=%s;
syms K;
GH=(K*(s+4))/(s+2)^2
disp("the characterstics eq. is determined as:")
CH=(s+2)^2+(K*(s+4))
CH=sym('((s+2)^2)+K*(s+4)');
disp('=0',CH,"characterstics_eq,CH=")
K=sym('((s+2)^2/(s+4))')
d=diff(K,s)
e=(s+2)*(s+6)
r1=roots(e)
disp(r1,"roots=")
disp("-2 and -6 is break away point")
g=(s+4)/((s+2)^2)
G=syslin('c',g)
clf();
evans(g,10)
xgrid(2)
disp("for wd=2rad/sec,the point on root locus is s=-4+j2")
disp("the value of K at s=-4+j2 is 4")
K=4
k=4
g=k*(s+4)/((s+2)^2)
cl=g/(1+g)
disp(cl,"C(s)/R(s)=")