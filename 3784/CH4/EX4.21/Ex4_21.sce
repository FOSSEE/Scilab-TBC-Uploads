clc
//Variable Initialisation
Ea=220//Input Voltage of motor in volts
Ia=150//Armature Current in Ampere
Ra=0.06//Armature resistance in ohm
N1=1000//Rated Speed of Motor in rpm
N2=500//Rated Speed of Motor in rpm
N4=1350//Rated Speed of Motor in rpm
d3=0.91//Duty Ratio
Ia2=2*Ia
//Solution
Eb1=Ea-(Ia*Ra)
Eb2=(N2/N1)*Eb1
E01=Eb2+(Ia*Ra)
d1=E01/Ea
E02=Eb2-(Ia*Ra)
d2=E02/Ea
E03=d3*Ea
Eb3=E03+(Ia2*Ra)
N3=(Eb3/Eb1)*N1
Pin=E03*Ia2
R=N1/N4 //Ratio of If1 and If2
printf('\n\n Duty ratio for motoring operation=%0.1f\n\n',d1)
printf('\n\n Duty ratio for braking operation=%0.1f\n\n',d2)
printf('\n\n Maximum permissible motor Speed=%0.1f rpm\n\n',N3)
printf('\n\n Ratio of If1 and If2=%0.1f\n\n',R)
