
//calculating current flowing in the circuit
L=0.1//inductance
f=50//frequency
Xl=2*%pi*f*L
R=15//total resistance in the circuit
Z=sqrt(R^2+Xl^2)
V=230//voltage applied to series circuit
I=V/Z
mprintf("Current flowing in the circuit=%f A\n",I)
//calculating power factor
pf=R/Z
mprintf("Power factor of the circuit is %f(lagging)\nVoltage across reactor=%f V\nVoltage across resistor=%f V",pf,I*Xl,I*R)

