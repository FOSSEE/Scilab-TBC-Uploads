clc
//Variable Initialisation
Ea=220//Input Voltage of motor in volts
Ia=125//Armature Current in Ampere
Eb=60//Average Value of Back EMF
f=200//Chopper Frequency
Ra=0.025//Armature resistance in ohm
Rf=0.015//Field resistance in ohm
//Solution
d1=(Eb+(Ia*(Ra+Rf)))/Ea
T=(1/f)
ton=d1*T
printf('\n\n The Pulse Width=%0.1f msec\n\n',ton*10^3)
