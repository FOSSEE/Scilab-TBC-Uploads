clc
//Variable Initialisation
Ea=220//Input Voltage of motor in volts
Ia=100//Armature Current in Ampere
Ia2=1.5*Ia
Ra=0.01//Armature resistance in ohm
Rb=2
N1=1000//Rated Speed of Motor in rpm
N2=500//Rated Speed of Motor in rpm
d2=0.5
//Solution
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
d=(1-(((Eb2/Ia2)-Ra)/Rb))//Wrongly solved in textbook
Eb3=Ia2*(((1-d2)*Rb)+Ra)
N3=(Eb3/Eb1)*N1
printf('\n\n Duty Ratio of chopper=%0.1f\n\n',d)//The answer provided in the textbook is wrong
printf('\n\n Motor Speed=%0.1f rpm\n\n',N3)
