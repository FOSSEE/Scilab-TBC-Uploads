s=poly (0,'s')
F=syslin('c',[1/(3*s+1)])//RC=3 sec
G=F
fmin=0.1
fmax=100
scf(1);clf;
bode(G,fmin,fmax)
show_margins(G)