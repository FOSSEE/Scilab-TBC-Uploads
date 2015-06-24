clc
Q_12=30; //kJ
W_12=60; //kJ
dU_12=Q_12-W_12;
Q_21=0;
W_21=Q_21+dU_12;
disp("W_21 =")
disp(W_21)
disp("Thus 30 kJ work has to be done on the system to restore it to original state, by adiabatic process.")