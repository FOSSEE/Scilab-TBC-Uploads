clc
TL=4.2
TH=305
COPR=TL/(TH-TL)
mprintf("COPR=%f\n",COPR)//ans vary due to roundoff error
QL=83.3
W=QL/COPR
mprintf("W=%fkJ",W)//ans vary due to roundoff error
