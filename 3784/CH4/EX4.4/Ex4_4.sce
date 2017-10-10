clc
//Variable Initialisation
V=230//Input Voltage of motor in volts
Ra=1.5//Armature resistance in ohm
La=1e-3//Armature inductance in ohm
Ia=15//Armature Current in Ampere
k=0.05//Voltage constant
//Solution
Eb=0 //when d=0
Ea=Eb+(Ia*Ra)
d=Ea/V
Eb1=V-(Ia*Ra)
//when d1=1
N=Eb1/k
printf('\n\n Range of speed control is from 0 to %0.1f\n\n',N)
printf('\n\n The Duty Cycle is from%0.1f to 1\n\n',d)
//The answers vary due to round off error
