clc
TL=270
TH=300
COPR=TL/(TH-TL)
mprintf("COPR=%i\n",COPR)
QL=5*10^6 //in kJ/h
W=(QL/3600)/COPR
mprintf("W=%fkW",W)//ans vary due to roundoff error
