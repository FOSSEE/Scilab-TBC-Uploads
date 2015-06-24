
V=250//voltage applied to the motor
Eb1=V//Ra is negligible
N1=500//speed in rpm
Ia1=40//armature current
R=25//additional resistance
//as flux remains same, back emf is directly proportional to speed; and torque is directly proportional to armature current
//Eb2=250-Ia2*25, N2=500-50*Ia2
//also, torque varies as cube of speed
//from these conditions, we get, Ia2^3-30*Ia2^2+325*Ia2-1000=0
//solving this equation, we get
Ia2=5
N2=(Ia2/Ia1)^(1/3)*N1
mprintf("Speed of the motor with 25 ohm resistor in the armature circuit=%d rpm",N2)
