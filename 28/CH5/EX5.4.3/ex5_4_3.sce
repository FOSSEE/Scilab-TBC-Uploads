// let the char equation be
syms Ka
s=%s;
p=s^2+(2+(a*Ka))*s+Ka=0
cof_1=coeffs(p,'s',0)
// Wn^2=cof_1
Wn=sqrt(cof_1)
cof_2=coeffs(p,'s',1)
// 2*zeta*Wn=cof_2
Kv=cof_1/cof_2;
Ess=1/Kv;
// given Ess=0.25
Ess=0.25;
Ka=2/(Ess-a)
disp(Ka."Ka=")