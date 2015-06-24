//caption:find value of unknown inductance,resistance and Q for maxwell bridge
//Ex4.7
clc
clear
close
R1=220//resistance of first arm(in ohm)
C1=0.22*10^-6//capacitance of first arm(in F)
R2=1000//resistance of second arm(in ohm)
R3=1000//resistance of third arm(in ohm)
f=1000//frequency of arm(in Hz)
w=2*%pi*f
R=(R2*R3)/R1
disp(R,'resistance(in ohm)=')
L=R2*R3*C1
disp(L,'inductance(in H)=')
Q=w*R1*C1
disp(Q,'Q value of the bridge=')