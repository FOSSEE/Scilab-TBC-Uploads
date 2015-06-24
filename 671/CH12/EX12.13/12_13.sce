V=400
Poutmech=5000
Prl=285
Pm=Poutmech+Prl
s=1-1445/1500
s2=1-900/1500



p=poly([0,-(1-s)*V*V/Pm/s,1/s/s+1/s2/s2],"R2","coeff")
r=roots(p)
R2=r(1)
X2=R2/s2

ws=2*%pi*1500/60
Tmax=3/ws*V*V/3*0.5/X2
disp(Tmax)
