// Example 1.36

clear; clc; close;

// Given data
VL=440;//in volts
P=4;//no. of Poles
f=50;//in Hz
//Zleak=0.3+%i*5.5+0.25/S;//in ohm/phase
K=2.5;//Stator to rotor voltage ratio
T=150;//in N-m
N=1250;//in rpm

//Calculations
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//slip
Zleakage=1/3*(0.3+%i*5.5+0.25/S);//in ohm/phase
V1=VL/sqrt(3);//in volt
disp("I2rdash=V1/sqrt((0.1+Rx/S)^2+1.83^2) after adding additional resistance.");
disp("T=1/2/%pi/ns*3*I2rdash^2*Rx/S");
//R2x^2*T*S*2*%pi*ns/S^2+R2x*T*S*2*%pi*ns*0.2/S+T*S*2*%pi*ns*0.01+T*S*2*%pi*ns*1.83^2-3*(V1^2)*R2x=0;//equating
ns=Ns/60;//in rps
P=[T*S*2*%pi*ns/S^2 T*S*2*%pi*ns*0.2/S-3*(V1^2) T*S*2*%pi*ns*0.01+T*S*2*%pi*ns*1.83^2];//polynomial for value of R2xdash
R2x=roots(P);//
R2x=R2x(1);//neglecting lower value
Rx_stator=R2x-0.083;//in ohm
format('v',5);
disp(Rx_stator,"External resistance referred to stator in ohm : ");
Rx_rotor=Rx_stator/K^2;//in ohm/phase
format('v',6);
disp(Rx_rotor,"External resistance rotor side in ohm/phase : ");
