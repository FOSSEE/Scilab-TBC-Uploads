
V=230//voltage applied to motor
N1=1000//initial speed
Ia=35//armature current
Ra=.3//resistance of armature circuit
Eb1=V-Ia*Ra
N1=1000//speed in rpm
Ia=25//armature current in new situation
N2=750//changed speed in rpm
//back emf is directly proportional to speed
R=((V-Ia*Ra)*N1-N2*Eb1)/(Ia*N1)
mprintf("Additional resistance in armature circuit=%f ohm",R)
