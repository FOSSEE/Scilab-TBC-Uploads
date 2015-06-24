uo=(4*%pi)*1E-7

l1=50/100
l2=20/100
l3=50/100
lbc=0.025/100

A1=25E-4
A2=12.5E-4
A3=25E-4

fluxg=0.75E-3

B=fluxg/A1
Fbc=B/uo*lbc

Hcd=200
Hab=Hcd
Fabcd=Hab*l1
Fad=Fbc+Fabcd
Had=Fab/l2
Bad=1.04
fluxad=Bad*A2

fluxdea=fluxad+fluxg
Bdea=fluxdea/A3
Hdea=500
Fdea=Hdea*l3

F=Fdea+Fad

disp(F)