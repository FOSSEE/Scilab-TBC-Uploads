P=1000000
Vrated=6600
If=60
Xs_unsat=4700/sqrt(3)/98
disp(Xs_unsat)
Xs_adj=Vrated/sqrt(3)/143
disp(Xs_adj)

Ia=P/sqrt(3)/Vrated
pf=0.8
theta=-acos(pf)
Ia=Ia*(exp(%i*theta))
Ef=norm(Vrated+%i*Xs_adj*Ia*sqrt(3))
disp(Ef)
VR=Ef/Vrated-1
disp(VR)
