//Current taken by a motor at 90 percent efficiency

clc;
clear;

V=500;
N=400/60;// Speed in rotations per sec
eff=90/100;
T=195 

Pd=2*%pi*N*T; // Power developed by the motor

Pi=Pd/eff; // Power input to the motor

I=Pi/V;

printf('The Current taken by the motor = %g A \n',I)
