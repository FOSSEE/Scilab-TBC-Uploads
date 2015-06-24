uo=(4*%pi)*1E-7
ur=6000
A=5/2*2/10000
Lr=(%pi*(20+25)/2-0.1)/100
Lg=0.1/100
Rr=Lr/(uo*ur*A)
Rg=Lg/(uo*A)
Rtotal=Rr+Rg

F=2*500
flux=F/Rtotal
Bg=flux/A
disp(Bg)

L=flux*500/2
disp(L)

Wfr=1/2*Rr*flux*flux
Wfg=1/2*Rg*flux*flux
disp(Wfg,Wfr)

imax=2
flux_max=flux
E=4.44*314/(2*%pi)*500*flux_max
flux_max2=100/(sqrt(2)*4.44*314/(2*%pi)*500)
Fmax2=flux_max2*Rtotal
imax2=Fmax2/500
disp(imax2)