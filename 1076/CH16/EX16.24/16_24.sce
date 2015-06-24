clear
clc

Pp=3e3;
Et=1e7
Plp=220
C=2.1

lf=(Et/8760)/Pp
lf=round(lf*100)/100
mprintf("\nLoad Factor = %.2f ", lf)

L=(.3*lf) + (.7*lf*lf)
L=round(L*1000)/1000
mprintf("\nLoss Factor = %.3f ", L)

Loss=L*Plp
mprintf("\nLoss = %.1f kW", Loss)

CLY=Loss*8760*C
mprintf("\nCost of Energy Loss = Rs %.1f ",CLY)

