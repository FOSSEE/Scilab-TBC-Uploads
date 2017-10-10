clc
//Variable Initialisation
Ea=220//Input Voltage of motor in volts
d1=0.8//Duty Ratio
Ia1=310//Armature Current in Ampere
Ra=0.04//Armature resistance in ohm
N4=1500//Rated Speed of Motor in rpm
//Solution
E0=d1*Ea
Eb1=E0+(Ia1*Ra)
N1=610//Motor speed in rpm
Eb2=215
N2=(Eb1/Eb2)*N1
d2=0.95
E02=d2*Ea
Eb3=E02+(Ia1*Ra)
N3=(Eb3/Eb2)*N1
Eb4=(N4/N1)*Eb2
Ra1=((Eb4-E02)/Ia1)
printf('\n\n Motor Speed=%0.1f rpm\n\n',N2)
printf('\n\n Maximum Allowable Speed=%0.1f rpm\n\n',N3)//The answers vary due to round off error
printf('\n\n Resistance to be Inserted=%0.1f ohm\n\n',Ra1)
