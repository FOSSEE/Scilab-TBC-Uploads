clc
//Variable Initialisation
Ea=230//Input Voltage of motor in volts
d1=0.8//Duty Ratio
d2=0.75//Duty Ratio
Ia1=80//Armature Current in Ampere
Ra=0.25//Armature resistance in ohm
N2=750//Rated Speed of Motor in rpm
N3=600//Rated Speed of Motor in rpm
Ia2=70
Eb2=210//Average Value of Back EMF
//Solution
E01=d1*Ea
Eb1=E01-(Ia1*Ra)
N1=(Eb1/Eb2)*N2
Ia2=86
E02=d2*Ea
Eb3=E02-(Ia2*Ra)
Wm=2*%pi*N3/60
T=Eb3*Ia2/Wm
printf('\n\n Motor Speed=%0.1f rpm\n\n',N1)
printf('\n\n Torque produced=%0.1f N-m\n\n',T)
