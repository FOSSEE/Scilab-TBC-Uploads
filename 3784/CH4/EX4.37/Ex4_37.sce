clc
//Variable Initialisation
Ea=210//Input Voltage of motor in volts
Ia1=80//Armature Current in Ampere
N1=1200//Rated Speed of Motor in rpm
Ra=0.08//Armature resistance in ohm
Rf=0.08
N2=1000
//Solution
T1=poly(0,'T1')
T2=2*T1
A=T2/T1
Ia2=Ia1*(sqrt(2))//A=2
Eb1=Ea-(Ia1*Ra)
Eb2=Ia2*N2*Eb1/(Ia1*N1)
Rb=(Eb2/Ia2)-Ra
printf('\n\n Braking=%0.1f Amp\n\n',Ia2)
printf('\n\n Braking Resistor=%0.1f ohm\n\n',Rb)
