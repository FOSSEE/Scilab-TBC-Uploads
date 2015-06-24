//Example No. 6.3
clc;
clear;
close;
format('v',7);

//Given Data : 
N=288;//rpm
f=50;//Hz
CuLoss=275;//W
Ns=300;//rpm(For S=0.03:0.05)
P=120*f/Ns;//poles
disp(P,"No. of poles : ");
S=(Ns-N)/Ns;//Slip
disp(S,"Slip : ");
S=2*S;//(as rotor reistance doubled, slip is doubled)
disp(S,"Slip for full load if rotor resiatance doubled : ");
//CuLoss=I2^2*r2
CuLoss=2*CuLoss;//KW(rotor resiatance doubled & current constant)
disp(CuLoss,"New value of rotor copper loss in watt : ");
