clc
//Variable Initialisation
Ea=230//Input Voltage of motor in volts
Ia=10//Armature Current in Ampere
Ia2=2*Ia//Given condition for armature Current
Ia3=2*Ia//Given condition for armature Current
Ra=1.5//Armature resistance in ohm
Rb=15//Braking Resistance in ohm
N1=1500//Rated Speed of Motor in rpm
N2=1200//Rated Speed of Motor in rpm
//Solution
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
d1=1-(((Eb2/Ia2)-Ra)/Rb)
d2=0.6//Duty ratio 
Eb3=Ia3*(((1-d2)*Rb)+Ra)
N3=(Eb3/Eb1)*N1
printf('\n\n Duty ratio =%0.1f\n\n',d1)
printf('\n\n motor Speed=%0.1f rpm\n\n',N3)
