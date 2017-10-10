clc
//Variable Initialisation
Ea=230//Input Voltage of motor in volts
Ia=50//Armature Current in Ampere
N1=800//Rated Speed of Motor in rpm
Ra=0.4//Armature resistance in ohm
d1=0.3//Duty ratio for Motoring Operation
d2=0.6//Duty ratio for Motoring Operation
d3=0.7//Duty ratio for Braking Operation
d4=0.4//Duty ratio for Braking Operation
//Solution
E01=d1*Ea
Eb1=Ea-(Ia*Ra)
Eb2=E01-(Ia*Ra)
N2=(Eb2/Eb1)*N1
E02=d2*Ea
Eb3=E02-(Ia*Ra)
N3=(Eb3/Eb1)*N1
E03=d3*Ea
Eb4=E03+(Ia*Ra)
N4=(Eb4/Eb1)*N1
E04=d4*Ea
Eb5=E04+(Ia*Ra)
N5=(Eb5/Eb1)*N1
printf('\n\n Motor speed for Motoring Operation 1 =%0.1f rpm\n\n',N2)
printf('\n\n Motor speed for Motoring Operation 2=%0.1f rpm\n\n',N3)
printf('\n\n Motor speed for Braking Operation 1=%0.1f rpm\n\n',N4)
printf('\n\n Motor speed for Braking Operation 2=%0.1f rpm\n\n',N5)
