
//calculating capacitance to give resonance
Xl=2*%pi*50*.4
Xc=Xl
C=1/(2*%pi*50*Xc)
mprintf("Capacitance=%f microF\n",C*1D+6)
//calculating current
R=5
Z=R
V=110
I=V/Z
mprintf("current drawn=%f A\n",I)
//calculating voltage across inductance
Xl=2*%pi*50*.4
Vl=I*Xl
mprintf("Voltage across inductance=%f V\n",Vl)
//calculating voltage across capacitance
Xc=Xl
Vc=I*Xc
mprintf("Voltage across capacitance=%f V\n",Vc)
//calculating Q-factor
Q_factor=Vl/V
mprintf("Q-factor of the circuit=%f",Q_factor)
