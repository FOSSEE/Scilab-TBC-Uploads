clc
//Variable Initialisation
Ia1=86//Armature Current in Ampere
Ra=0.25//Armature resistance in ohm
N1=1000//Rated Speed of Motor in rpm
N2=850//Rated Speed of Motor in rpm
Eb1=220//Average Value of Back EMF
dmin=0.5//Minimum Duty Ratio
dmax=0.95//Maximum Duty Ratio
//Solution
Eb2=(N1/N2)*Eb1
Rbe=(Eb2/Ia1)-Ra
Rb=Rbe/(1-dmin)
R=Rb*(1-dmax)+Ra
Eb3=Ia1*R
Eb4=190
Ia2=55
K=Eb4/(2*%pi*N2/60)
T=K*Ia2
printf('\n\n Braking Resistor=%0.1f ohm\n\n',Rb)
printf('\n\n Maximum Available Motor Torque=%0.1f N-m\n\n',T)
