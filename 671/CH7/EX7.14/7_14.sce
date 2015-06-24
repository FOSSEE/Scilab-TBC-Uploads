uo=(4*%pi)*1E-7
ur=1600

lc=160/100
lg=0.8/1000
A=5/10000
N=1200

Rc=lc/(uo*ur*A)
Rg=lg/(uo*A)
R=Rc+Rg

L=N*N/R
disp(L)