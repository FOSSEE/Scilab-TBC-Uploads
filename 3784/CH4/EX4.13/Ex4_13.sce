clc
//Variable Initialisation
ton=10//On time of Chopper
toff=12//Off time of Chopper
Ea=220//Input Voltage of motor in volts
k=0.495//Motor Voltage constant
W=146.60//Rated Speed of Motor in rad/sec
Ra=2.87//Armature resistance in ohm
//Solution
d=ton/(ton+toff)//Duty cycle ratio
Ia=((d*Ea)-(k*W))/Ra
printf('\n\n Average load Current=%0.1f Amp\n\n',Ia)
//The answers vary due to round off error
