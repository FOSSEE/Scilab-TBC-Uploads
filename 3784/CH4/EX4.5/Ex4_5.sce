clc
//Variable Initialisation
Ea=220//Input Voltage to armature in volts
N1=1000//Rated Speed of Motor in rpm
N2=500//Speed of Motor in rpm
Ia=24//Armature Current in Ampere
Ra=2//Armature resistance in ohm
Es=230//Source voltage in Volts
//Solution
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
E0=Eb2+(1.2*Ia*Ra)
d=E0/Es
printf('\n\n The Duty Ratio=%0.1f\n\n',d)
//The answers vary due to round off error
