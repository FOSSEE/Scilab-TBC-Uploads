uo=(4*%pi)*1E-7
F=750*1
disp(F)

dm=(16+20)/200
lc=dm*%pi
Hc=F/lc
disp(Hc)

flux=1.25/1000
Ac=(20-16)*2.5/10000
Bc=flux/Ac
disp(Bc)

R=F/flux
disp(R)

u=Bc/Hc
disp(u)

ur=u/uo
disp(ur)          //calculation mistake in the book here