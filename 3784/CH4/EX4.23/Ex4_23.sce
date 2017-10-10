clc
//Variable Initialisation
Ea=220//Input Voltage of motor in volts
Ia=150//Armature Current in Ampere
Ia2=300 //torque is doubled
Ra=0.06//Armature resistance in ohm
Rb=2.2
N1=1000//Rated Speed of Motor in rpm
N2=700//Rated Speed of Motor in rpm
d2=0.55
//Solution
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
d=(1-(((Eb2/Ia2)-Ra)/Rb))
Eb3=Ia2*(((1-d2)*Rb)+Ra)
N3=(Eb3/Eb1)*N1
printf('\n\n Duty Ratio Of Chopper=%0.1f\n\n',d)
printf('\n\n Motor Speed=%0.1f rpm\n\n',N3)
