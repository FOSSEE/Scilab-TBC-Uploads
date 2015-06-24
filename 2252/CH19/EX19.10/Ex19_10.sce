
V=500//applied voltage
N1=700//initial speed of motor
Ia1=50//armature current
Ra=.4//effective armature resistance
Eb1=V-Ia1*Ra
N2=600//reduced speeed of motor
Ia2=Ia1//as torque and flux remains same
//back emf is directly proportional to speed
R=((V-Ia2*Ra)*N1-Eb1*N2)/(Ia2*N1)
mprintf("Additional resistance in the armature circuit is %f ohm",R)
