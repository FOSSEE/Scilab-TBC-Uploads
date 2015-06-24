
V=230//applied voltage
L=60D-3//inductance of coil
f=50 //frequency of supply
Xl=2*%pi*f*L
I=230/Xl
//if frequency is reduced to 20 Hz
Xl=2*%pi*20*L
I1=V/Xl
mprintf("Current through the coil if frequency is reduced to 20 Hz=%f A\n",I1)
//if frequency is increased to 60 Hz
Xl=2*%pi*60*L
I2=V/Xl
mprintf("Current through the coil if frequency is increased to 60 Hz=%f A\n",I2)
//if frequency is increased to 100 Hz
Xl=2*%pi*100*L
I3=V/Xl
mprintf("Current through the coil if frequency is increased to 100 Hz=%f A\n",I3)





