clc
//Variable Initialisation
Eb2=215//Average Value of Back EMF
Ia=300//Armature Current in Ampere
Ia1=310//Armature Current in Ampere
Ra=0.04//Armature resistance in ohm
N1=610//Rated Speed of Motor in rpm
N2=750//Rated Speed of Motor in rpm
dmin=0.05//Minimum Duty Ratio
//Solution
Eb1=(N2/N1)*Eb2
Rbe=(Eb1/Ia)-Ra
Rb=Rbe/(1-dmin)
R=Rb*(1-dmin)+Ra
K=Eb2/(2*%pi*N1/60)//The answer provided in the textbook is wrong
T=K*Ia
printf('\n\n Value of Braking Resistor=%0.1f ohm\n\n',Rb)
printf('\n\n Maximum Available Motor Torque=%0.1f N-m\n\n',T)
