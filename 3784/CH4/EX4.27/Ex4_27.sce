clc
//Variable Initialisation
Ia1=190//Armature Current in Ampere
Ia2=0.9*Ia1
Ra=0.08//Armature resistance in ohm
Ri=0.05
Ea=210//Input Voltage of motor in volts
N1=950//Rated Speed of Motor in rpm
N2=750//Rated Speed of Motor in rpm
//Solution
Eb1=Ea-(Ia1*Ra)
Eb2=(N2/N1)*Eb1
Vi=Eb2-(Ia2*(Ra+Ri))
printf('\n\n Internal Voltage of Source=%0.1f Volts\n\n',Vi)
