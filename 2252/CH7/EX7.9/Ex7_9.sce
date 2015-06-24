
//calculating capacitance
Xc=4//capacitive reactance
f=50
omega=2*%pi*f
C=1/(omega*Xc)
mprintf("Capacitance C=%f microF\n",C*1D+6)
//calculating impedance
R=5//resistance of circuit
Z=sqrt(R^2+Xc^2)
mprintf("Impedance of circuit=%f ohm\n",Z)
//calculating current taken by circuit
V=200
I=V/Z
mprintf("Current drawn by circuit=%f A\n",I)
//calculating voltage drop across the resistance
Vr=I*R
mprintf("Voltage drop across the resistance=%f V\n",Vr)
//calculating voltage drop across the reactance
Vc=I*Xc
mprintf("Voltage drop across the reactance=%f V\n",Vc)
//calculating power factor
pf=R/Z
mprintf("Power factor of the circuit=%f leading",pf)
