clc
//Variable Initialisation
Ea=220//Input Voltage of motor in volts
d1=0.8//Duty Ratio
Ia1=300//Armature Current in Ampere
Ra=0.04//Armature resistance in ohm
N1=600//Rated Speed of Motor in rpm
//Solution
E0=d1*Ea
Eb1=E0-(Ia1*Ra)
Eb2=210
N2=(Eb1/Eb2)*N1
Ia3=310
N3=500
Eb3=142
T=Eb3*Ia3/(2*%pi*N3/60)//Wrong calculated in book used N=520 instead of 500
printf('\n\n The Motor Speed=%0.1f rpm\n\n',N2)
printf('\n\n The Motor Torque=%0.1f N-m\n\n',T)//The answer provided in the textbook is wrong)
