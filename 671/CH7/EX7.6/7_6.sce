uo=(4*%pi)*1E-7
ur=4000
fluxc=0.01
N=500

Ll=(2*(20+4)+25+4)/100
Lc=(25+4)/100
Lr=Ll-0.02/100
Lg=0.02/100
A=4/100*4/100

Rl=Ll/(ur*uo*A)
Rc=Lc/(ur*uo*A)
Rr=Lr/(ur*uo*A)
Rg=Lg/(uo*A)

Fab=fluxc*Rc
fluxr=Fab/(Rr+Rg)
fluxl=fluxc+fluxr

F=fluxl*Rl+Fab
I=F/N

disp(I)