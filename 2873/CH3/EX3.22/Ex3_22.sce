// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 22")
p1=1.5*10^5;//initial pressure of air in pa
T1=(77+273);//initial temperature of air in K
p2=7.5*10^5;//final pressure of air in pa
n=1.2;//expansion constant for process 1-2
R=0.287;//gas constant in KJ/kg K
m=3;//mass of air in kg
disp("different states as described in the problem are denoted as 1,2and 3 and shown on p-V diagram")
disp("process 1-2 is polytropic process with index 1.2")
disp("(T2/T1)=(p2/p1)^((n-1)/n)")
disp("final temperature of air(T2)in K")
disp("T2=T1*(p2/p1)^((n-1)/n)")
T2=T1*((p2/p1)^((n-1)/n))
disp("at state 1,p1*v1=m*R*T1")
disp("initial volume of air(v1)in m^3")
disp("v1=(m*R*1000*T1)/p1")
v1=(m*R*1000*T1)/p1
disp("final volume of air(v2)in m^3")
disp("for process 1-2,v2=((p1*v1^n)/p2)^(1/n)")
v2=((p1*v1^n)/p2)^(1/n)
disp("for process 2-3 is constant pressure process so p2*v2/T2=p3*v3/T3")
disp("v3=v2*T3/T2 in m^3")
disp("here process 3-1 is isothermal process so T1=T3")
T3=T1;//process 3-1 is isothermal
v3=v2*T3/T2
disp("during process 1-2 the compression work(W1_2)in KJ")
disp("W1_2=(m*R*(T2-T1)/(1-n))")
W1_2=(m*R*(T2-T1)/(1-n))
disp("work during process 2-3(W2_3)in KJ,")
disp("W2_3=p2*(v3-v2)/1000")
W2_3=p2*(v3-v2)/1000
disp("work during process 3-1(W3_1)in KJ")
disp("W3_1=p3*v3*log(v1/v3)/1000")
p3=p2;//pressure is constant for process 2-3
W3_1=p3*v3*log(v1/v3)/1000
disp("net work done(W_net)in KJ")
disp("W_net=W1_2+W2_3+W3_1")
W_net=W1_2+W2_3+W3_1
disp("net work=-71.27 KJ")
disp("here -ve workshows work done upon the system.since it is cycle,so")
disp("W_net=Q_net")
disp("phi dW=phi dQ=-71.27 KJ")
disp("heat transferred from system=71.27 KJ")





