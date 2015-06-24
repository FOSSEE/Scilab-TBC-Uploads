s=%s;
syms K V
p=s^2+(100*K)*s+100=0
cof_1=coeffs(p,'s',0)
Wn=sqrt(cof_1)
zeta=1 // given
cof_2=coeffs(p,'s',1)
// 2*zeta*Wn=cof_2
K=(2*Wn*zeta)/100
// For ramp input
R=V/s^2
E=R/p
// steady state error
e=limit(s*E(s),s,0)
disp(e,"e(ss)=")