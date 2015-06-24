clear
clc
A=1/4
B=1/3
AorB=1/2
AandB=A+B-AorB
disp('probability of A/B=AandB/B=')
AandB/B
disp('probability of B/A=AandB/A=')
AandB/A
disp('probability of AandBnot=A-AandB=')
A-AandB
disp('probability of A/Bnot=AandBnot/Bnot=')
(1/6)/(1-1/3)