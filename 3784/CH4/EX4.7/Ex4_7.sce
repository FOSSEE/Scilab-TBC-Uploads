clc
//Variable Initialisation
Ra=0.08//Armature resistance in ohm
Ea=450//Input Voltage to armature in volts
Ia=275//Armature Current in Ampere
If=3//Field Current in Ampere
K=1.527//Voltage constant
d=0.65//Duty ratio
//Solution
Pin=d*Ea*Ia
E0=d*Ea
Eb=E0-(Ia*Ra)
W=Eb/(K*If)
N=W*60/(2*%pi)
T=K*If*Ia
printf('\n\n The Input power from Generator Source=%0.1f Watt\n\n',Pin)
printf('\n\n The Speed of Motor=%0.1f rpm\n\n',N)
printf('\n\n The Torque developed=%0.1f N-m\n\n',T)
