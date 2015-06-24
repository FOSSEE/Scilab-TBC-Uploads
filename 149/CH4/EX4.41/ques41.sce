//ques41
clc
disp('tanu=dQ/dr*r');
syms Q a;

r=2*a/(1-cos(Q));

u=atan(r/diff(r2,Q,1));
u=eval(u);
p=r*sin(u);
syms r;
Q=acos(1-2*a/r);

//cos(Q)=1-2*a/r;
p=eval(p);
disp(p);
