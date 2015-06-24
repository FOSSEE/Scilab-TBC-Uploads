//calculates//
s=%s;
syms s;
syms Wn zeta A H real;
T=6.28;
Wn=(8*%pi)/T;
zeta=0.3
n=Wn^2;
d=s^2+2*zeta*Wn*s+Wn^2;
G1=n/d;
disp(G1,"G1(s)")
G=A*G1;
disp(G,"G(s)")
S1=(diff(G,A))*(A/G);
a=simple(S1);
disp(a,"open loop sensitivity for changes in A")
M=G/.H;
p=simple(M)
S2=(diff(p,A))*(A/p);
b=simple(S2);
disp(b,"closed loop sensitivity for changes in A")
S3=(diff(p,H))*(H/p);
c=simple(S3);
disp(c,"closed loop sensitivity for changes in H")
