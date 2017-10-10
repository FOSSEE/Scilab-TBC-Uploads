clc
TL=250
TH=291
COPR=TL/(TH-TL)
mprintf("COPR=%f\n",COPR)//ans vary due to roundoff error
QL=4*10^4
W=QL/COPR
mprintf("W=%fkJ/d\n",W)//ans vary due to roundoff error
CW=200 //compressor work in watts
mprintf("Fraction of time compressor runs=%f\n",W/((CW*3600*24)/1000))//ans vary due to roundoff error
TH=310
COPR=TL/(TH-TL)
mprintf("COPR=%f\n",COPR)//ans vary due to roundoff error
W=QL/COPR
mprintf("W=%fkJ/d\n",W)//ans vary due to roundoff error
mprintf("fraction of time the compressor runs=%f\n",W/((CW*3600*24)/1000))//ans vary due to roundoff error

