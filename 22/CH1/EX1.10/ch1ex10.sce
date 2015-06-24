//signals and systems
//formation of differential equation for a series RC circuit 
clear
close
clc
r=15;
c=0.2;
//let the input voltage be x(t)
//let the loop current be i(t)
//let capacitor voltage be y(t)
disp("the loop equation 4 the circuit is given by r*i(t)+(5/D)*i(t)=x(t)")
disp("final form - (3D+1)y(t)=x(t)")
//the next few problems are of the same type where we have to frame the eqation based on the scenario