clc
//Variable Initialisation
Ea=230//Input Voltage of motor in volts
N1=1200//Rated Speed of Motor in rpm
N2=1000//Rated Speed of Motor in rpm
Ia=15//Armature Current in Ampere
Ia2=1.5*Ia
Ra=1.2//Armature resistance in ohm
Rb=20
d2=0.5
//Solution
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
d1=(1-(((Eb2/Ia2)-Ra)/Rb))
Eb3=Ia*(((1-d2)*Rb)+Ra)
N3=(Eb3/Eb1)*N1
printf('\n\n Duty Ratio Of Chopper=%0.1f\n\n',d1)
printf('\n\n Motor Speed=%0.1f rpm\n\n',N3)
