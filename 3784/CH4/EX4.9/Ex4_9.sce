clc
//Variable Initialisation
Ea=200//Input Voltage to armature in volts
Ia=20//Armature Current in Ampere
Ra=0.4//Armature resistance in ohm
k=0.1
N1=0//Speed of Motor in rpm
//Solution
Eb1=k*N1
d1=(Eb1+(Ia*Ra))/Ea
d2=1
Eb2=d2*Ea-(Ia*Ra)
N2=Eb2/k
printf('\n\n Range of speed control from 0 to %0.1f\n\n',N2)
printf('\n\n Range of duty cycle from %0.1f to 1\n\n',d1)
//The answers vary due to round off error
