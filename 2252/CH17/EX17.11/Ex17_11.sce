
//when the dc shunt machine works as a generator
V=250//terminal voltage
Il=80//load current
Rsh=100//field resistance
Ra=.12//armature resistance
Ish=V/Rsh
Ia=Il+Ish
Eg=V+Ia*Ra

//when the dc shunt machine works as a motor
V=250//applied voltage to motor
Il=80//line current drawn by the motor
Ia=Il-Ish
Eb=V-Ia*Ra
//for a machine, P*phi*Z/(60*A) is a constant
x=Eg/Eb
mprintf("speed as generator/speed as motor=%f",x)
