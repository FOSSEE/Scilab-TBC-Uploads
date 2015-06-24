//Example 10.15.1: slip,the air gap power and  efficiency
clc;
clear;
close;
format('v',6)
//given data :
w=100;// in rad/sec
F1=50;//in Hz
P=4;
Ns=(120*F1)/P;
ws=2*%pi*(Ns/60);
s=((ws-w)/ws);
disp("part (1)")
disp("slip is "+string(s)+" or "+string(s*100)+" % ")
disp("part (2)")
T=100;// in N-M
w=100;// in rad/sec
Pag=ws*T;
P_slip=s*Pag;
P_mech=(1-s)*Pag;
disp(Pag,"(a)the air gap power,pag(W) = ")
disp(P_slip,"(b)slip power(W) =")
disp(P_mech,"(c)Mech o/p power,P_mech(W) = ")
//air gap power is calculated wrong in the textbook
disp("part (3)")
eta=(P_mech/Pag);
disp("efficiency of the rotor circuit is "+string(eta)+" or "+string(eta*100)+" % ")
