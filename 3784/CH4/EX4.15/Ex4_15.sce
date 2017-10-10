clc
//Variable Initialisation
Ea=210//Input Voltage of motor in volts
Ia=25//Armature Current in Ampere
Es=230
N1=1500//Rated Speed of Motor in rpm
Ra=3//Armature resistance in ohm
N2=800//Rated Speed of Motor in rpm
//Solution
Ia2=1.5*Ia
Eb=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb
E0=Eb2+(Ia2*Ra)
d=E0/Es
printf('\n\n Duty Ratio=%0.1f\n\n',d)
