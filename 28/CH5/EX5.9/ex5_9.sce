s=%s;
syms t m
A=[0 1;-100 -20];
B=[0;100];
C=[1 0];
x=[0;0];
[r c]=size(A)
p=s*eye(r,c)-A
q=inv(p);
disp(q,"phi(s)=") // Resolvant matrix
for i=1:r;
for j=1:c;
q(i,j)=ilaplace(q(i,j),s,t)
end
end
disp(q,"phi(t)=") // State transition matrix
t=t-m;
q=eval(q)
// Integrate q w.r.t m
r=integrate(q*B,m)
m=0    // Upper limit is t
g=eval(r)  // Puting upper limit in q
m=t // Lower limit is 0
h=eval(r)   // Putting lower limit in q
y=(h-g);
disp(y,"y=")
printf("x(t)=phi(t)*x(0)+integrate(phi(t-m*B) w.r.t m from 0 to t)")
y1=(q*x)+y;
disp(y1,"x(t)=")
// transfer function
t=C*q*B;
disp(t,"T(s)=")
