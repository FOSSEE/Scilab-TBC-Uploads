clc
//Variable Initialisation
Ia=50//Armature Current in Ampere
Ea=440//Input Voltage to armature in volts
N=1000//Rated Speed of Motor in rpm
Ra=0.5//Armature resistance in ohm
Ra1=10.5//Armature resistance in ohm
Rf=100//Field resistance in ohm
N1=400//Speed of Motor in rpm
N2=800//Speed of Motor in rpm
ton=2*10^(-3)
//Solution
If=Ea/Rf
Eb=Ea-(Ia*Ra)
Eb1=(N1/N)*Eb
E01=Eb1+(Ia*Ra1)
t1=(Ea/E01)*2*10^3
f1=1/t1
Eb2=(N2/N)*Eb
E02=Eb2+(Ia*Ra)
t2=(Ea/E02)*ton
f2=1/t2
printf('\n\n The Chopping Frequency 1=%0.1f\n\n',f1)
printf('\n\n The Chopping Frequency 2=%0.1f\n\n',f2)
//The answers vary due to round off error
