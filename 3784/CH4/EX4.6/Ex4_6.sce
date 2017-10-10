clc
//Variable Initialisation
Ea=500//Input Voltage to armature in volts
Ra=0.09//Armature resistance in ohm
If=3//Field Current in Ampere
K=1.527//Voltage constant
T=560//Torque Developed in N-m
N1=0//Speed of Motor in rpm
d2=1//duty ratio
//Solution
Ia=T/(K*If)
Eb=K*N1
d1=(Eb+(Ia*Ra))/Ea
N2=((d2*Ea)-(Ia*Ra))/(K*If)
N2r=N2*60/(2*%pi)
d3=[0.2,0.4,0.6,0.8,1.0]
N3r=[556.56 ,1181.92,1807.28 ,2432.6,3058.0]
plot(d3,N3r)
xlabel ('Duty Interval')
ylabel ('Speed in RPM')
