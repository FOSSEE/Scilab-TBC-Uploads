//Example 6.10
clc
format(7)
IE=12
beta=100
IB=IE/(1+beta)
disp(IB,"We know that base current,  IB(mA) = IE / (1 + beta) = ")
format(8)
IC=IE-IB
disp(IC,"and collector current,  IC(mA) = IE - IB = ")