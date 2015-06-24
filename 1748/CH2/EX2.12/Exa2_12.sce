//Exa 2.11
clc;
clear;
close;
//Given data : 
R2=0.02;//in ohm
X2=0.1;//im ohm
//let external resistance per phase = r then R2=R2+r ohm
S=1;//slip at starting
disp("Torque at standing will be maximum if R2/X2=S=1");
disp("Since at start speed is zero and slip is, therefore, unity or R2=X2");
r=X2-R2;//in ohm
disp(r,"External resistance per phase added to the rotor circuit in ohms : ");