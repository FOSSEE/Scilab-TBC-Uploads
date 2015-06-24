// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 17")
Q12=1000;//heat added during process 1-2 in KJ
Q34=800;//heat added during process 3-4 in KJ
T1=500;//operating temperature for process 1-2
T3=400;//operating temperature for process 3-4
T5=300;//operating temperature for process 5-6
T2=T1;//isothermal process
T4=T3;//isothermal process
T6=T5;//isothermal process
disp("total heat added(Q)in KJ")
disp("Q=Q12+Q34")
Q=Q12+Q34
disp("for heat addition process 1-2")
disp("Q12=T1*(s2-s1)")
disp("deltaS=s2-s1=Q12/T1 in KJ/K")
deltaS=Q12/T1
disp("or heat addition process 3-4")
disp("Q34=T3*(s4-s3)")
disp("deltaS=s4-s3=Q34/T3 in KJ/K")
deltaS=Q34/T3
disp("or heat rejected in process 5-6(Q56)in KJ")
disp("Q56=T5*(s5-s6)=T5*((s2-s1)+(s4-s3))=T5*(deltaS+deltaS)")
Q56=T5*(deltaS+deltaS)
disp("net work done=net heat(W_net)in KJ")
disp("W_net=(Q12+Q34)-Q56")
W_net=(Q12+Q34)-Q56
disp("thermal efficiency of cycle(n)=W_net/Q")
n=W_net/Q
disp("or n=n*100 %")
n=n*100 
disp("so work done=600 KJ and thermal efficiency=33.33 %")




