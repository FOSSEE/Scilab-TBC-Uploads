//problem 2.9
clc;
clear;
close;
//given data :
format('v',5);
P=6;//No. of poles
m=3;//No. of phase
f=50;//in Hz
Xo_int=1;//in ohm/phase
Rrotor_int=0.1;//in ohm/phase
//S=1 for starting
S=1;//unitless
disp("Max. Torque condition : R2=X2");
//Rext+Rrotor_int=Xo_int
Rext=Xo_int-Rrotor_int;//in ohm/phase
disp(Rext,"External resistance to be added(ohm/phase) : ");
