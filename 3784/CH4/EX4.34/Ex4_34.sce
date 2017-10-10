clc
//Variable Initialisation
Ea=230//Input Voltage of motor in volts
Ia=15//Armature Current in Ampere
Ra=1.2//Armature resistance in ohm
Rb=20//Braking Resistance in ohm
Ia2=15*Ia
N1=1200//Motor Speed in rpm
//Solution
Eb=Ea-(Ia*Ra)
Eb1=Ea-(Ia2*Ra)
d1=1-(((Eb1/Ia2)-Ra)/Rb)
d2=0.5//Duty ratio
Eb2=Ia*(((1-d2)*Rb)+Ra)
N2=(Eb2/Eb)*N1
printf('\n\n Duty ratio Of Chopper=%0.1f\n\n',d1)
printf('\n\n Motor Speed=%0.1frpm\n\n',N2)
