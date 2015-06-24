//Caption:Find the per-unit slip (a) in the direction of rotation (b) in opposite direction and effective rotor resistance in each branch
//Exa:10.1
clc;
clear;
close;
P=4;//no. of poles
f=60;//frequency in Hertzs
R2=12.5;//rotor resistance (in ohms)
N_s=120*f/P;//synchronous speed of motor(in rpm)
N_m=1710;//speed of motor in clockwise direction (in rpm)
s=(N_s-N_m)/N_s;
disp(s,'(a) slip in forward direction=');
s_b=2-s;
disp(s_b,'(b) slip in backward direction=');
//effective rotor resistance
R_f=0.5*R2/s;//(in forward branch)
disp(R_f,'effective rotor resistance in forward branch (in ohms)=');
R_b=0.5*R2/s_b;//(in backward direction)
disp(R_b,'effective rotor resistance in backward branch (in ohms)=');