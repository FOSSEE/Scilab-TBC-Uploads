
//rating of bulb is 100 W,110 V
P=100
V=110
I=P/V//normal current of bulb
//voltage across bulb should be 110 V
Vc=sqrt(230^2-V^2)//voltage across the capacitance
Xc=Vc/I
C=1/(100*%pi*Xc)
mprintf("Capacitance of %f microF must be connected in series with the bulb",C*1D+6)
