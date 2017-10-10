clc
//Variable Initialisation
Ea=220//Input Voltage of motor in volts
d=0.95//Maximum Duty Ratio
Ia1=100//Armature Current in Ampere
Ia2=150//Armature Current in Ampere
Ra=0.01//Armature resistance in ohm
N1=1000//Rated Speed of Motor in rpm
//Solution
Eb1=Ea-(Ia1*Ra)
E0=d*Ea
Eb2=E0+(Ia2*Ra)
N2=(Eb2/Eb1)*N1
Pin=E0*Ia2
printf('\n\n Maximum Permissible MOtor Speed=%0.1f rpm\n\n',N2)
//The answers vary due to round off error
