s=%s
syms K J f
K=60; // given
J=10; // given
p=K/J
q=K/J+(f/J)*s+s^2
G=p/q;
disp(G,"Qo(s)/Qi(s)=")
zeta=0.3;  // given
cof1=coeffs(q,'s',0)
// on comparing the coefficients
Wn=sqrt(cof1)
cof2=coeffs(q,'s',1)
// 2*zeta*Wn=cof2
f/J=2*zeta*Wn
r=s^2+f/J
s=s^2+f/J+K/J
H=r/s;
disp(H,"Qe(s)/Qi(s)=")

