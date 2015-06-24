syms t m
s=%s;
A=[0 1;-2 -3];
B=[0;2];
x=[0;1];
[r c]=size(A)
p=s*eye(r,c)-A
q=inv(p)
for i=1:r
for j=1:c
q(i,j)=ilaplace(q(i,j),s,t)
end
end
disp(q,"phi(t)=") // state transition matrix
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
