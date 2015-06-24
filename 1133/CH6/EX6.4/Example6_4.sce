//Example 6.4
clc
disp("To analyze the circuit means to drive the truth table for it.")
disp("We have,  D = Input XOR Q_n")
disp("")
disp("CLK    Input    Q_n    D = input XOR Q_n    Q_n+1")
disp("down     0       0              0              0")
disp("down     0       1              1              1")
disp("down     1       0              1              1")
disp("down     1       1              0              0")
disp("")
disp("In the circuit fig. 6.53, output does not change when input is 0 and it toggles when input is 1. This is the characteristics of T flip-flop. Hence, the given circui is T flip-flop constructed using D flip-flop.")
