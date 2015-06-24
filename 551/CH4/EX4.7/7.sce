clc
W_12=-82; //kJ
Q_12=-45; //kJ
dU_12=Q_12 - W_12;
W_21=100; //kJ
dU_21=-dU_12;
Q_21=dU_21 + W_21;
disp("Heat added to the system = ")
disp(Q_21)
disp("kJ")