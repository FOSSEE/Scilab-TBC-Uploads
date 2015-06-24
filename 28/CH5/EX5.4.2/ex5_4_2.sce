// with derivative feedback
// characteristic equation is
syms a
s=%s;
p=s^2+(2+(8*a))*s+8=0
zeta=0.7 // given
Wn=2.828;
cof_1=coeffs(p,'s',1)
// on comparing 2*zeta*Wn=cof_1
a=((2*zeta*Wn)-2)/8
disp(a,"Derivative feedback=")
cof_2=coeffs(p,'s',0)
cof_1=2+8*0.245;
Kv=cof_2/cof_1;
Ess=1/Kv
disp(Ess,"Steady state error=")