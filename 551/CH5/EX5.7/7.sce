clc
T1=523; //K
T2=258; //K
Q1=90; //kJ

n=1-T2/T1;
disp("(i) Efficiency of the system")
disp(n*100)
disp("%")


disp("(ii) The net work transfer")
W=n*Q1;
disp("W=")
disp(W)
disp("kJ")


disp("(iii) Heat rejected to the sink")
Q2=Q1-W;
disp("Q2=")
disp(Q2)
disp("kJ")