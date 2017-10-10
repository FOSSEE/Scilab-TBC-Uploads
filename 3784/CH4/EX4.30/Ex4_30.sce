clc
//Variable Initialisation
Ra=0.08//Armature resistance in ohm
T=300//Torque in N-m
N=1000//Rated Speed of Motor in rpm
Rf=12//Field Winding Resistor in ohm
//Solution
Eb=poly(0,'Eb')
W=2*%pi*N/60
Pd=T*W
Ea=Eb-((Pd*Ra)/Eb)
If=20//From previous Example
Ea1=Rf*If
Eb1=250//From previous Example
Ia=(Eb1-Ea1)/Ra
If1=Ea1/Rf
Ir=Ia-If
Rb=Ea1/Ir
printf('\n\n Braking Resistance=%0.1f ohm\n\n',Rb)
