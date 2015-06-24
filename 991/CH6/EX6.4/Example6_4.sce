//Example 6.4.
clc
format(6)
IE=10
alpha=0.98
disp("The common-base d.c. current gain, alpha = IC/IE")
IC=alpha*IE
disp(IC,"Therefore,  IC(mA) = ")
disp("The emitter current, IE = IB + IC")
IB=IE-IC
disp(IB,"Therefore,  IB(mA) = ")