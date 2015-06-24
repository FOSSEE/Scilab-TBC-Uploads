
//calculating frequency of applied voltage
C=25.5D-6//capacitance
I=.4//current through circuit
V=50//voltage across capacitor
Xc=V/I
f=1/(2*%pi*C*Xc)
mprintf("Frequency=%d Hz\n",round(f))
//calculating parameters of choke coil
V=35//voltage across choke coil
Z=V/I//impedance of choke coil
//r^2+(100*%pi*L)^2=Z^2
R=20/.4
Vac=45//voltage across ac portion of circuit
Zac=Vac/I//impedance of ac portion
//(R+r)^2+(100*%pi*L)^2=Zac^2
//solving for r and L
r=(Zac^2-Z^2-R^2)/(2*R)
L=sqrt(Z^2-r^2)/(100*%pi)
Xl=2*%pi*50*L
mprintf("Parameters of choke coil:\nResistance=%f ohm\nInductance=%f H\nInductive reactance=%f ohm\n",r,L,Xl)
//calculating applied voltage
Z=sqrt((R+r)^2+(Xl-Xc)^2)
V=I*Z
mprintf("Voltage applied to the circuit=%f V\n",V)
//calculating losses in choke coil
W=I^2*r
mprintf("Losses in choke coil=%d W\n",round(W))
