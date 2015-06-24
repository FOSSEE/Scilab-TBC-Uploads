uo=(4*%pi)*1E-7

Bg=1.2
N=400
ur=4000

lc=(2*(20-4+16-4)-0.2)/100
Ac=4/100*4/100
Rc=lc/(ur*uo*Ac)

lg=0.2/100
Rg=lg/(uo*Ac)

R=Rc+Rg

flux=Bg*Ac
i=flux*R/N

disp(i)