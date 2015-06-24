//value//
s=%s;
H=syslin('c',1/(s*((s+3)^2)));
evans(H,100)
K=25;
y=K*H; //-----eq 1)
disp(K*H,"G(s)H(s)=");
disp('=1',K*H,"mod(G(s)H(s))");
//on solving eq 1 for s=%i*w this we get an equation m
w=poly(0,'w');
m=w^3+9*w-25
n=roots(m)
s=%i*n(1)
p=horner(y,s)
[R,Theta]=polar(p)
PM=180+Theta
