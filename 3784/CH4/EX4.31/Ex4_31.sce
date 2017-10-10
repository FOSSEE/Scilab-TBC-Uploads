clc
//Variable Initialisation
Ea=230//Input Voltage of motor in volts
Ia=200//Armature Current in Ampere
Ra=0.02//Armature resistance in ohm
N1=960//Rated Speed of Motor in rpm
N2=350//Rated Speed of Motor in rpm
N4=1200//Rated Speed of Motor in rpm
d3=0.95
//Solution
Ia2=2*Ia
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
E01=Eb2+(Ia*Ra)
d1=E01/Ea
Ea2=Eb2-(Ia*Ra)
d2=Ea2/Ea
Eam=d3*Ea
P=Eam*Ia2
Eb3=Eam+(Ia2*Ra)
N3=(Eb3/Eb1)*N1
Ifr=(N1/N4)
printf('\n\n Duty ratio for motoring operation=%0.1f\n\n',d1)
printf('\n\n Duty ratio for braking operation=%0.1f\n\n',d2)
printf('\n\n Maximum permissible motor Speed=%0.1f rpm\n\n',N3)
printf('\n\n Field Current as Ratio of its rated value=%0.1f\n\n',Ifr)
