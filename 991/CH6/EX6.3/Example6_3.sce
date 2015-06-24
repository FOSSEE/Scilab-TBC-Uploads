//Example 6.3.
clc
format(6)
alpha=0.967
IE=10
disp("The common-base d.c. current gain (alpha) is,")
disp("alpha = 0.967 = IC/IE = IC/10")
IC=alpha*IE
disp(IC,"Therefore,    IC(mA) = ")
disp("The emitter current,    IE = IB + IC")
IB=IE-IC
disp(IB,"Therefore,    IB(mA) = ")