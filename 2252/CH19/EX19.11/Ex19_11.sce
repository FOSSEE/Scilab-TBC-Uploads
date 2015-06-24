
R=.25+.05//total resistance of the armature circuit
N1=500//normal speed
V=250//applied voltage
Ia1=100//armature current at normal speed
Eb1=V-Ia1*R
//solving part (i)
R1=R+1//total resisitance in the armature circuit
Ia2=50//armature current
Eb2=V-Ia2*R1
//back emf is directly proportional to speed
N2=Eb2/Eb1*N1
mprintf("For(i)\nSpeed=%d rpm\n",round(N2))
//solving part (ii)
Ia3=50//armature current
Eb3=V-Ia3*R
//Ish3=.6*Ish1-->phi3/phi1=.6
//back emf is directly proportional to flux and speed
N3=(Eb3/Eb1)*N1/.6
mprintf("For(ii)\nSpeed=%d rpm", N3)
