clc
//Variable Initialisation
Ea=230//Input Voltage of motor in volts
Ia=50//Armature Current in Ampere
Ra=0.4//Armature resistance in ohm
N1=800//Rated Speed of Motor in rpm
//Solution
T=poly(0,'T')
W=2*%pi*N1/60
Eb=Ea-(Ia*Ra)
K=Eb/W
d1=0.3
W1=((d1*Ea)/K)-(Ra/(K^2))*T
d2=0.6
W2=((d2*Ea)/K)-(Ra/(K^2))*T
d3=0.7
W3=((d3*Ea)/K)+(Ra/(K^2))*T
d4=0.4
W4=((d4*Ea)/K)+(Ra/(K^2))*T
disp(W1,'Speed in terms of torque for motoring operation for duty ratio 0.3')
disp(W2,'Speed in terms of torque for motoring operation for duty ratio 0.6')
disp(W3,'Speed in terms of torque for Braking operation for duty ratio 0.7')
disp(W4,'Speed in terms of torque for Braking operation for duty ratio 0.4')
