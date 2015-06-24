
n=1
q=1.602*10^-19
k=1.38*10^-23
T=290
Is=10^-8
a=q/(n*k*T)
Ib=0
Rj=1/(a*(Ib+Is))
printf("\n(a)Rj=%.2e ohm",Rj)
Ib=100*10^-6
Rj=1/(a*(Ib+Is))
printf("\n(b)Rj=%.1f ohm",Rj)