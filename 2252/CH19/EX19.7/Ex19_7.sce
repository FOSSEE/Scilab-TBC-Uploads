
//working as motor
V1=110//applied voltage to motor
Rsh=45//shunt field resistance
Ish1=V1/Rsh//shunt field current
Il=230
Ia1=Il-Ish1
Ra=.03//armature resistance
Eb1=V1-Ia1*Ra
N1=450//speed in rpm
V2=210//changed value of applied voltage
Ish2=V2/Rsh
Il=85//current drawn by the motor from the main
Ia2=Il-Ish2
Eb2=V2-Ia2*Ra
//back emf is directly proportional to shunt field current and speed
N2=(Eb2/Eb1)*(Ish1/Ish2)*N1
mprintf("Speed of the motor=%d rpm\n",N2)
//working as generator
V=200//terminal voltage across the load
Ish3=V/Rsh
Il=140//load current on the generator
Ia3=Il+Ish3
Eg=V+Ia3*Ra
N3=(Eg/Eb1)*(Ish1/Ish3)*N1
mprintf("Speed at which generator would have to run=%d rpm",N3)
//answers vary from the textbook due to round off error
