uo=(4*%pi)*1E-7
ur=2000
V=200
f=50
N=1600
Ac=5/10000

flux_max=V/(4.44*f*N)
Bmax=flux_max/Ac
disp(Bmax)

Rc=20/100/(uo*ur*Ac)
Rg=0.5/1000/(uo*Ac)
R=Rc+Rg

imax=flux_max*R/N
disp(imax)

Wfmax=1/2*R*(flux_max^2)
disp(Wfmax)

percent=Rg/R*100
disp(percent)