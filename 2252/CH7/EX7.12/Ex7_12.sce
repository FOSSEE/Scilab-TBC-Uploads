
//calculating current drawn
V=230//voltage applied
R=15+10//total resistance of the circuit
L=.04+.1//total inductance
Xl=2*%pi*50*L
C=100D-6//capacitance
Xc=1/(2*%pi*50*C)
X=Xl-Xc
Z=sqrt(R^2+X^2)
I=V/Z
mprintf("Current drawn=%f A\n",I)
//calculating voltages V1 and V2
Z1=sqrt(15^2+(2*%pi*50*.04)^2)
V1=I*Z1
phi1=atand(2*%pi*50*.04/15)
mprintf("V1=%f V and leads the current by %f degrees\n",V1,round(phi1))
Z2=sqrt(10^2+(2*%pi*50*.1-1/(2*%pi*50*100D-6))^2)
V2=I*Z2
phi2=acosd(10/Z2)
mprintf("V2=%f V and lags the current by %f degrees\n",V2,phi2)
//calculating power factor of overall circuit
pf=R/Z
mprintf("Power factor of overall circuit=%f lagging",pf)
//The answers vary from the textbook due to round off error
