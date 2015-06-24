//laplace//
//pole zero plot for g(s)=(s^2+3s+2)/(s^2+7s+12)
s=%s;
p=poly([2 3 1],'s',"coeff")
q=poly([12 7 1],'s',"coeff")
V=syslin('c',p,q)
plzr(V)
syms s t ;
v =ilaplace('(2+(3*s)+s^2)/(s^2+(7*s)+12)',s,t)
disp(v,"V(t)=')
