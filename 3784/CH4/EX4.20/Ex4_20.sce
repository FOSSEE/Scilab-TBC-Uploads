clc
//Variable Initialisation
Ea=230//Input Voltage of motor in volts
Ia=30//Armature Current in Ampere
Ia2=60//Armature Current in Ampere
N1=1000//Rated Speed of Motor in rpm
N2=800//Rated Speed of Motor in rpm
Ra=0.7//Armature resistance in ohm
d2=0.6//Duty Ratio
d3=0.9//Duty Ratio
d4=0.9//Duty Ratio
//Solution
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
E01=Eb2-(Ia*Ra)
d1=E01/Ea
E02=d2*Ea
Eb3=E02+(Ia*Ra)
N3=(Eb3/Eb1)*N1
E03=d3*Ea
Eb4=E03+(Ia2*Ra)
N4=(Eb4/Eb1)*N1
E04=d4*Ea
Pin=E04*Ia2
printf('\n\n Duty Ratio Of Chopper=%0.1f\n\n',d1)
printf('\n\n Motor Speed for duty ratio 0.6=%0.1f rpm\n\n',N3)
printf('\n\n Maximum Aloowable Speed=%0.1f rpm\n\n',N4)
printf('\n\n Power Fed to Source=%0.1f KW\n\n',Pin*10^-3)
//The answers vary due to round off error
