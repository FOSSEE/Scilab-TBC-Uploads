
//calculating resistance, reactance and impedance of choke coil
I=7.5//current flowing through the circuit
V1=110//voltage across non-inductive resistor
R=V1/I
V2=180//voltage across choke coil
Z=V2/I
Zt=230/I//impedance of whole circuit
r=(Zt^2-R^2-Z^2)/(2*R)
Xl=sqrt(Z^2-r^2)
mprintf("Reactance of coil=%f ohm\nResistance of coil=%f ohm\nImpedance of coil=%f ohm\n",Xl,r,Z)
//calculating total resistance and impedance of the circuit
Rt=r+R
Zt=sqrt(Rt^2+Xl^2)
mprintf("Total resistance of circuit=%f ohm\nTotal impedance of circuit=%f ohm\n",Rt,Zt)
//calculating power absorbed by the coil
P1=I^2*r
mprintf("Power absorbed by the coil=%f W\n",P1)
//calculating power drawn by circuit
P2=I^2*(r+R)
mprintf("Power drawn by the circuit=%f W\n",P2)
//calculating power factor of whole circuit
pf=Rt/Zt
mprintf("Power factor of the whole circuit=%f lagging",pf)
//answers vary from the textbook due to round off error
