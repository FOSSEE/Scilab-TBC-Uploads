clc
Q=-340; //kJ
n=200; //cycles/min

//For Process 1-2

W_12=4340; //kJ/min
Q_12=0;

dE_12=Q_12-W_12;
disp("dE_12 =")
disp(dE_12)
disp("kJ/min")

//For process 2-3

Q_23=42000; //kJ/min
W_23=0;

dE_23=Q_23-W_23;
disp("dE_23 =")
disp(dE_23)
disp("kJ/min")

//For process 3-4

Q_34=-4200; //kJ/min
dE_34=-73200; //kJ/min

W_34=Q_34-dE_34;
disp("W_34 =")
disp(W_34)
disp("kJ/min")

//For process 4-1
Q_41=Q*n-Q_12-Q_23-Q_34;
disp("Q_41 =")
disp(Q_41)
disp("kJ/min")

dE_41=0-dE_12-dE_23-dE_34;
disp("dE_41 =")
disp(dE_41)
disp("kJ/min")

W_41=Q_41-dE_41;
disp("W_41 =")
disp(W_41)
disp("kJ/min")