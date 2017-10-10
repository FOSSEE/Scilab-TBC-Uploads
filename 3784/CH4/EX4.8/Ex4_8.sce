clc
//Variable Initialisation
ton=15
toff=10
Ea=220//Input Voltage to armature in volts
Km=0.4//Voltage constant
N=1400//Rated Speed of Motor in rpm
Ra=2//Armature resistance in ohm
//Solution
d=ton/(ton+toff)
E0=d*Ea
W=2*%pi*N/60
Ia=(E0-(Km*W))/Ra
printf('\n\n The Average load Current=%0.1f Amp\n\n',Ia)
