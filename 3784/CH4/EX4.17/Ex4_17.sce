
clc
//Variable Initialisation
Ea=220//Input Voltage of motor in volts
Ia=100//Armature Current in Ampere
Ra=0.01//Armature resistance in ohm
N1=1000//Rated Speed of Motor in rpm
N2=500//Rated Speed of Motor in rpm
//Solution
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
Ea2=Eb2+(Ia*Ra)
d1=Ea2/Ea
Ea3=Eb2-(Ia*Ra)
d2=Ea3/Ea
printf('\n\n Duty Ratio of Chopper in motoring operation=%0.1f\n\n',d1)
printf('\n\n Duty Ratio of Chopper in breaking operation=%0.1f\n\n',d2)
//The answers vary due to round off error
