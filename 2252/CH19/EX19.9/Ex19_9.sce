
N1=600//initial speed of the motor in rpm
Ia1=20//armature current
V=200//applied voltage
Ra=.4//armature resistance
Eb1=V-Ia1*Ra
Rf1=200//field resistance
If1=200/200//field current
N2=900//increased speed in rpm
//If2=200/Rf
//phi1/phi2=If1/If2=Rf/200
//Ia2=Ia1*phi1/phi2=.1*Rf
//Eb2=200-.04*Rf 
//back emf is directly proportional to flux and speed
//we get a quadratic equation in Rf as .04*Rf^2-200*Rf+57600=0
//solving for Rf
Rf2=(200-sqrt(200^2-4*.04*57600))/(2*.04)
mprintf("Additional resistance in the shunt field circuit=%f ohm",Rf2-Rf1)

