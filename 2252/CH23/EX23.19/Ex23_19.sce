
//at short circuit
Vsc=100//applied voltage
Isc=15//line value of current
Iph=Isc/sqrt(3)//phase value of current
//calculating starting current drawn by the motor
V=400//line voltage
Vph=V/sqrt(3)//phase voltage
I=Iph*Vph/Vsc//phase value of starting current
Il=I
mprintf("Starting current drawn by the motor=%d A\n",Il)
//calculating ratio of starting to full load current
Pout=5D+3//output
e=.84//full load efficiency
pf=.82//power factor
I=Pout/(sqrt(3)*V*pf*e)//full load current
r=Il/I
mprintf("Ratio of starting to full load current=%f",r)

