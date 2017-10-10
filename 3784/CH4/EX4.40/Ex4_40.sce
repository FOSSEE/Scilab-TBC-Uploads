clc
//Variable Initialisation
Ea=220//Input Voltage of motor in volts
N1=700//Rated Speed of Motor in rpm
T1=247
Ra=0.06//Armature resistance in ohm
Rf=0.04
d1=0.7
T2=1.5*T1
Ia1=133//Armature Current in Ampere
//Solution
K=T2/Ia1
R=Ra+Rf
Eb=(d1*Ea)-(Ia1*R)//Wrong value taken in book for Armature current
W=Eb/K
N2=W*60/(2*%pi)
printf('\n\n Motor Speed=%0.1f rpm\n\n',N2)//The answer provided in the textbook is wrong
