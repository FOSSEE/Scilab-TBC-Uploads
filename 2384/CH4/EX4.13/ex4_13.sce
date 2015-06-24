// Exa 4.13
clc;
clear;
close;
format('v',7)
// Given data
R = 10;// in ohm
L = 0.2;// in H
C = 40;// in µF
C = C * 10^-6;// in F
V = 100;// in V
f_r = 1/(2*%pi*sqrt(L*C));// in Hz
disp(f_r,"The frequency at resonace in Hz is");
Im = V/R;// in A
disp(Im,"The current in A is");
Pm = (Im^2)*R;// in W
disp(Pm,"The power in W is");
// voltage across R 
V_R = Im*R;// in V
disp(V_R,"The voltage across R in V is");
X_L = 2*%pi*f_r*L;// in ohm
// voltage across L 
V_L = Im*X_L;// in V
disp(V_L,"The voltage across L in V is");
X_C = 1/(2*%pi*f_r*C);// in ohm
// voltage across  C 
V_C = Im*X_C;// in V
disp(V_C,"The voltage across  C in V is");
omega = 2*%pi*f_r;// in rad/sec
Q = (omega*L)/R;
disp(Q,"The quality factor is");
del_F = R/(4*%pi*L);
f1 = f_r-del_F;// in Hz
f2 = f_r+del_F;// in Hz
disp("The half power frequencies are : "+string(f1)+" Hz and "+string(f2)+" Hz");
BW = f2-f1;// in Hz
disp(BW,"The bandwidth in Hz is : ")
