
//solving (i)
Il=70//current drawn by the motor
V=200//applied voltage
Rsh=100//shunt field resistance
Ish=V/Rsh//shunt field current
Ia1=Il-Ish
N1=500//initial speed
Ra1=.2//armature resistance
Eb1=200-Ia1*Ra1
N2=350//reduced speed of motor
Ia2=Ia1//armature current remains same
//Eb2=200-68*(R+.2)
//back emf is proportional to speed
R=((V-Ia2*Ra1)*N1-Eb1*N2)/(Ia2*N1)
mprintf("Additional resistance in the armature circuit=%f ohm\n",R)
//solving (ii)
Ra2=R+Ra1//armature resistance
Ia3=35//armature current
Eb3=V-Ia3*Ra2
N3=N1*Eb3/Eb1
mprintf("Speed=%d rpm",N3)
//answer vary from the textbook due to round off error
