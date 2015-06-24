
C=30D-6
R=500
T=C*R
mprintf("Time constant T=%f sec\n", T)
//at t=0sec, voltage across capacitor is zero
V=100//aplied voltage
I=V/R//Ohm's Law
mprintf("Initial current=%f A\n", I)
t=.05
Q=C*V
q=Q*(1-exp(-t/T))
mprintf("Charge on the capacitor after 0.05 sec is %f C\n", q)
i1=I*exp(-t/T)
mprintf("Charging current after 0.05 sec is %f A\n",i1)
t=.015
i2=I*exp(-t/T)
mprintf("Charging current after 0.015 sec is %f A\n",i2)
V=i1*R
mprintf("Voltage across 500 ohm resistor after 0.05 sec is %f V", V)
//answers vary from the textbook due to round off error
