//Example 1.46://limiting error
clc;
clear;
dE=0.2;//erroe in modulus of elesticity
d1=0.01;//change in width
b=4.5;//width
dB=d1/b;//error in width
d2=0.01;//change in width
D=0.9;//width
dD=d2/D;//error in width
d3=0.01;//change in beam
L=45;//BEAM
dL=d3/L;//error in beam
d4=0.1;//change in deflection
y=1.8;//deflectrion
dy=d2/D;//error in deflection
lr= (dE+dB+3*dD+3*dL+dy);//percentage limiting error
disp(lr," peercentage limiting error in percentage is ±")
// answer is wrong in the textbook
